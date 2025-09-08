import 'package:flutter/material.dart';
import 'package:flutter_zth_first/feature/personal_detail/models/personal_model.dart';
import 'package:flutter_zth_first/feature/save/controller/save_controller.dart';
import 'package:get/get.dart';

class SaveScreen extends GetView<SaveController> {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildCustomScrollView);
  }

  get _buildCustomScrollView =>
      CustomScrollView(slivers: [_buildAppBar, _buildBody]);

  get _buildAppBar {
    return SliverAppBar(
      title: Text(
        'Saved',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leading: Icon(Icons.menu, color: Colors.white),
      centerTitle: true,
      expandedHeight: 68,
      actions: [
        Icon(Icons.search, color: Colors.white),
        SizedBox(width: 20),
      ],
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, const Color.fromARGB(255, 0, 71, 128)],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
      ),
    );
  }

  get _buildBody {
    return Obx(
      () => controller.loading.value
          ? SliverToBoxAdapter(
              child: SizedBox(
                height: Get.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [CircularProgressIndicator()],
                ),
              ),
            )
          : SliverList.builder(
              itemCount: controller.productModel.products?.length,
              itemBuilder: (context, index) {
                final product = controller.productModel.products?[index];
                return GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (_) =>
                    //         PersonalDetailScreen(name: name, email: 'admin@admin.com'),
                    //   ),
                    // );

                    final valueNew = PersonalModel(
                      id: index,
                      name: 'Sithy168',
                      email: 'admin168@admin.com',
                    );

                    // final value = {
                    //   'name': 'Chamreoun Sithy',
                    //   'email': 'admin@admin.com',
                    // };

                    Navigator.of(
                      context,
                    ).pushNamed('/personal', arguments: valueNew);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      spacing: 15,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          radius: 40,
                          backgroundImage: NetworkImage(
                            product?.thumbnail ?? '',
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width * 0.5,
                              child: Text(
                                product?.title ?? '',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                            Text(
                              product?.brand ?? '',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

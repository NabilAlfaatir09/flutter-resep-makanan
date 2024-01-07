import 'package:flutter/material.dart';
import 'package:flutter_resep_makanan/app/data/colors.dart';

class ResepCard extends StatelessWidget {
  final String title, rating, cookTime, thumbnailUrl;
  const ResepCard({
    super.key,
    required this.title,
    required this.rating,
    required this.cookTime,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        color: ColorsAll.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: ColorsAll.black.withOpacity(0.6),
            offset: const Offset(0, 10),
            blurRadius: 10,
            spreadRadius: -6,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            ColorsAll.black.withOpacity(0.20),
            BlendMode.multiply,
          ),
          image: NetworkImage(thumbnailUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: ColorsAll.white,
                  fontFamily: "Poppins",
                  fontSize: 20,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ColorsAll.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: ColorsAll.yellow,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        rating,
                        style: const TextStyle(color: ColorsAll.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ColorsAll.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: ColorsAll.bgColor,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        cookTime,
                        style: const TextStyle(color: ColorsAll.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

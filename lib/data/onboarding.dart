final onboardings = [
  Onboarding(
    image: 'https://i.imgur.com/X2G11k0.png',
    headline: 'Browse all the category',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
  ),
  Onboarding(
    image: 'https://i.imgur.com/sMLlh1i.png',
    headline: 'Amazing Discounts & Offers',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
  ),
  Onboarding(
    image: 'https://i.imgur.com/lHlOUT5.png',
    headline: 'Delivery in 30 Min',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
  ),
];

class Onboarding {
  final String image;
  final String headline;
  final String description;

  Onboarding({
    required this.image,
    required this.headline,
    required this.description,
  });
}

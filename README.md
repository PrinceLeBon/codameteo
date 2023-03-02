# codameteo

Weather App with api and hive.

* [OpenWeather API](https://openweathermap.org/api)
* [Hive](https://docs.hivedb.dev/#/README)
* Design inspired
  by [this.](https://dribbble.com/shots/15342976-Weather-forecast-Mobile-App-Deisign)

<details><summary>Link of assets:</summary>
<p>
- https://pixabay.com/fr/photos/camogli-plage-temps-orageux-7033965/
</p>
<p>
- https://pixabay.com/fr/photos/%c3%a9clair-pluie-temp%c3%aate-orage-4702140/
</p>
<p>
- https://pixabay.com/fr/photos/pluie-des-pistes-multicolore-4886848/
</p>
<p>
- https://pixabay.com/fr/photos/pleine-lune-silhouette-ch%c3%a2teau-nuit-2097326/
</p>
<p>
- https://pixabay.com/get/g44b05d0b0fd2a7f27638a095b87520e19b65843ae1f815a269258774427f5248fd074985f8ba3eb20aad30d4597faaba7c05db2a66d0473b27e2265470b1a1fa54dae9b4343b19733df7419c1489bafa_1920.jpg?attachment=
</p>
<p>
- https://pixabay.com/get/gce56ba36c75537f8b1100a2447f8ecd01059a2bd46fe05e12b275769afe6a380935b801fde6e5dad3f0fea0a1be947a9f0f9b37181e31ddfc1e4b4386693f73ecd94725bfff6ce3d1dc0a082cca918af_1920.jpg?attachment=
</p>
<p>
- https://pixabay.com/fr/photos/plantes-landscapes-arbre-prairie-5245322/
</p>
<p>
- https://pixabay.com/get/gb701dadbb5f16348849823a6e084e1970f7eab55fed7ca7387f5b5a5606c13cfaf238844b3fd4baf684e848d466103459f0df0c104a553ded18724a6314c833da5d5cd6df2ad6442719e61adef4126bf_1920.jpg?attachment=
</p>
<p>
- https://pixabay.com/fr/photos/la-nature-eau-lac-for%c3%aat-silence-3474826/
</p>
- https://pixabay.com/fr/photos/homme-pont-solitaire-se-promener-1156619/
<p>
- https://pixabay.com/fr/photos/no%c3%abl-neige-rue-il-neige-lampadaire-2059698/
</p>
<p>
- https://pixabay.com/fr/photos/%c3%a9tang-surface-lac-journ%c3%a9e-l%c3%a9ger-1043221/
</p>
<p>
- https://pixabay.com/fr/photos/ville-passerelle-des-arbres-2045453/
</p>
</details>

## Installation

1. Make sure you have Flutter installed on your computer.
2. Download or clone this repository to your computer.
3. Open the project in your favorite code editor.
4. Run the command `flutter pub get` in the terminal to install the dependencies.
5. Connect your mobile device or run an emulator.
6. Launch the application or run the `flutter run` command in the terminal to run the application on
   your device.

## Usage

1. Add a city to list by pressing the "Add City" button in a drawer.
2. Watch the weather for a given city.
3. Delete a city from the list by pressing the trash button

## Features

- Locate the user's current position
- Retrieve through an API the weather data of a position or a city
- Show all the weather data of a position or a city
- Save cities in Hive

  > https://user-images.githubusercontent.com/102158487/222467217-49b8eeb5-ac85-482a-8905-7ca2cd1f3cb8.webm

## Known issues

- Improve the design (background images), so that the text can be read easily.
- This is not really a problem, but when you select a city to see its weather, the weather displayed
  is for a neighborhood around the selected city. Nevertheless the coordinates returned are
  approximately similar to the real data. For more accurate data, you should consider using another
  API.

## Contribution

How to Contribute I would love to receive contributions to this project! If you would like to
contribute, please follow these steps:

- Step 1: Identify a problem or opportunity to contribute

- Step 2: Fork the deposit Once you have identified a problem or opportunity for contribution, you
  need to create your own copy of the repository (called a "fork")

- Step 3: Set up your development environment After forking the repository, you need to configure
  your development environment to be able to work on the project. Please see
  the [README.md](https://github.com/PrinceLeBon/codameteo/blob/main/README.md) file for
  instructions on how to install dependencies and set up your environment.

- Step 4: Write code Now that you have set up your development environment, you can start writing
  code to solve the problem or add new features.

- Step 5: Submit a pull request Once you have finished writing code, you can submit a pull request
  to get your code into the main repository. To do this, you need to click the "New pull request"
  button on your fork page on Github, select your fork as the source and the main repository as the
  target, and then click the "Create pull request" button. Be sure to provide a detailed description
  of what you have done and any additional information needed to understand your contribution.

- Step 6: Discuss and integrate Other contributors and project maintainers will discuss your
  contribution and may make comments and suggestions to improve your code. Once you have received
  feedback, you can take it into account and make the necessary changes. If everything is in order,
  your contribution will be integrated into the main repository.

## License

[MIT License](https://opensource.org/licenses/MIT). This project is released under the MIT license,
which means that you can use, copy, modify and distribute the source code freely.

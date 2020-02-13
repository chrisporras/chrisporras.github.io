# Omnicalc GUI

We are starting with a completely blank Rails application, and our goal is to match this target:

[https://omnicalc-gui.matchthetarget.com/](https://omnicalc-gui.matchthetarget.com/)

## Specifications

Click around the target and familiarize yourself with it. What are the specs of this application — what can it do?

Remember, for a web application, the specs are comprised of **a list of URLs that users can visit** and **the responses each URL should send back**.

In this case, I can see:

 - `/square/results`: accepts a query string and renders some output
 - `/square_root/results`: accepts a query string and renders some output
 - `/payment/results`: accepts a query string and renders some output
 - `/random/results`: accepts a query string and renders some output

So far, these are similar to what we built in the Omnicalc Params project, except that the response is formatted in HTML rather than in JSON. But there are also some corresponding forms:

 - `/square/new`: renders a form that, when submitted, sends the user to `/square/results` (along with a query string)
 - `/square_root/new`: renders a form that, when submitted, sends the user to `/square_root/results` (along with a query string)
 - `/payment/new`: renders a form that, when submitted, sends the user to `/payment/results` (along with a query string)
 - `/random/new`: renders a form that, when submitted, sends the user to `/random/results` (along with a query string)

These are the only 8 URLs I can identify by clicking around as a user; we'll see if we need more as we are implementing these.

## Part 1: Results URLs

Implement the 4 `.../results` URLs. This should be familiar from the Omnicalc Params project, but now we need to add view templates and render HTML the way that we did in the Rock, Paper, Scissors project.

## Part 2: Form URLs

It would be terrible if we made our users type their input into their address bars, within query strings. Let's instead provide forms that users can submit, and the forms will assemble the correct query strings on their behalf.

Implement the 4 `.../new` URLs. When building forms, the key is to keep all of the different attributes straight:

#### Most crucial attributes

The purpose of a form is to make it easy for users to assemble URLs with query strings, so that they don't have to type it into the address bar themselves. Therefore, there are two attributes that are most crucial to forms:

 - `action=""`: Goes on the `<form>` itself: determines the URL that the user is sent to when the form is submitted.
 - `name=""`: Goes on `<input>`s: determines the **key** in the query string that the user input will be stored under.

#### Identifying inputs

It's essential that we add a `<label>` for every `<input>` so that the form is usable (users need to know what each input is for), accessible (screen readers cannot deal with forms unless every input is labeled correctly), and testable (automated tests also need to know which input is for what).

 - `id=""`: Goes on `<input>`s: determines with `<label>` is associated with the `<input>`.
 - `for=""`: Goes on `<label>`s: determines which `<input>` the label is associated to.

Make the values of these two attributes match for each `<label>`/`<input>` pair.

#### Other useful attributes

 - `placeholder=""`: Goes on `<input>`s: mostly cosmetic, determines they light gray helper text within the `<input>`.
 - `value=""`: Goes on `<input>`s: allows you to pre-fill the input. Useful for edit forms.

## Feedback

Run `rails grade` after you've manually tested a feature in your app and verified that it behaves like the target, and would like confirmation that it's doing the right thing.

**Don't run `rails grade` before you've manually verified that your app behaves like the target** — manual testing should always come first.
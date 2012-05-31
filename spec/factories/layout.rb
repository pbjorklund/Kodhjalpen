# encoding: utf-8
FactoryGirl.define do
  factory :layout, class: Cms::Layout do
    label "Default Layout"
    identifier "default"
    content <<-eos
        <div class="hero-unit">
          <h1>Hjälp andra göra gott</h1>
          <ul class="thumbnails">
            <span class="span6">
              <p> <p>Kodhjälpen är en samling av programmerare, designers och andra människor som tillsammans vill göra nytta för lokal välgörenhet genom att skänka sin tid och expertis.</p>
        <p>
          Syftet med kodhjälpen är att ge välgörenhet möjlighet att få tillgång till IT-verktyg som underlättar deras verksamhet.&nbsp;&nbsp;
        </p>
        <p>
          Donera lite av din tid för att göra skillnad, det gör gott.
        </p>
        <a href="https://github.com/pbjorklund/kodhjalpen"><img style="position:absolute;top:30px;right:0;border:0" src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png" alt="Fork me on GitHub"></a> </p>
                <a href="eventet" class="btn btn-primary btn-large">Läs mer</a>
                <a class="btn btn-success btn-large" href="/sign_up">Registrera dig!</a>
            </span>
            <li class="span4">
            <a href="#" class="thumbnail">
              <img src="http://farm7.staticflickr.com/6180/6202772723_fbee7b590b.jpg">
        <div style="text-align:center">
          Photo by:&nbsp;hackNY.org&nbsp;<br>
        </div>
            </a>
            </li>
          </ul>
        </div>

        <!-- Example row of columns -->
        <div class="row">
          <div class="span6">
            <h2>IT-proffs</h2>
            <p> <p>
          Många välgörenhetsorganisationer gör mycket gott men har inte resurserna som krävs för att skaffa de IT-verktyg som behövs. Det kan vara verktyg för att hålla koll på volontärer, insamlingar, scheman etc.
        </p>
        <p>
          Donera lite av din tid för att göra skillnad, det gör gott.
        </p> </p>

          </div>
          <div class="span6">
            <h2>Välgörenhetsorganisation</h2>
            <p> <p>
          Allt är gratis för er som välgörenhet. Det enda IT-proffsen behöver för att hjälpa till är att ni bistår med er tid och ert kunnande kring er verksamhet. Det behövs för att tillsammans kunna skapa lösningen som just ni verkligen behöver.
        </p> </p>
          </div>
        </div>
    eos
    app_layout "application"

    css "default_css"
    js "default_js"
    position 0
  end
end

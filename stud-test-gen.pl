
for my $x(0..999) {
    my $port = 8443 + $x;
print <<END;
          <HTTPSamplerProxy guiclass="HttpTestSampleGui" testclass="HTTPSamplerProxy" testname="HTTP Request" enabled="true">
            <elementProp name="HTTPsampler.Arguments" elementType="Arguments" guiclass="HTTPArgumentsPanel" testclass="Arguments" testname="User Defined Variables" enabled="true">
              <collectionProp name="Arguments.arguments"/>
            </elementProp>
            <stringProp name="HTTPSampler.domain"></stringProp>
            <stringProp name="HTTPSampler.port">$port</stringProp>
            <stringProp name="HTTPSampler.connect_timeout"></stringProp>
            <stringProp name="HTTPSampler.response_timeout"></stringProp>
            <stringProp name="HTTPSampler.protocol"></stringProp>
            <stringProp name="HTTPSampler.contentEncoding"></stringProp>
            <stringProp name="HTTPSampler.path"></stringProp>
            <stringProp name="HTTPSampler.method">GET</stringProp>
            <boolProp name="HTTPSampler.follow_redirects">true</boolProp>
            <boolProp name="HTTPSampler.auto_redirects">false</boolProp>
            <boolProp name="HTTPSampler.use_keepalive">true</boolProp>
            <boolProp name="HTTPSampler.DO_MULTIPART_POST">false</boolProp>
            <boolProp name="HTTPSampler.monitor">false</boolProp>
            <stringProp name="HTTPSampler.embedded_url_re"></stringProp>
          </HTTPSamplerProxy>
          <hashTree>
            <XPathAssertion guiclass="XPathAssertionGui" testclass="XPathAssertion" testname="XPath Assertion" enabled="true">
              <boolProp name="XPath.negate">false</boolProp>
              <stringProp name="XPath.xpath">//h1/em[text()=&quot;$x&quot;]</stringProp>
              <boolProp name="XPath.validate">false</boolProp>
              <boolProp name="XPath.whitespace">false</boolProp>
              <boolProp name="XPath.tolerant">false</boolProp>
              <boolProp name="XPath.namespace">false</boolProp>
            </XPathAssertion>
            <hashTree/>
          </hashTree>
END
}

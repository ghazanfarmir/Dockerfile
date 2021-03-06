shared_examples 'collection::bootstrap' do
    include_examples 'bootstrap::layout'
    include_examples 'bootstrap::distribution'
    include_examples 'bootstrap::toolchain'
    include_examples 'bootstrap::ansible'

    if (os[:family] == 'alpine')
        include_examples 'vendor::alpine::apk'
    end
end

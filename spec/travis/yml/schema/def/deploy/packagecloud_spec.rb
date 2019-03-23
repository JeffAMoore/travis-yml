describe Travis::Yml::Schema::Def::Deploy::Packagecloud, 'structure' do
  describe 'definitions' do
    subject { Travis::Yml.schema[:definitions][:deploy][:packagecloud] }

    # it { puts JSON.pretty_generate(subject) }

    it do
      should eq(
        '$id': :packagecloud,
        title: 'Packagecloud',
        anyOf: [
          {
            type: :object,
            properties: {
              provider: {
                type: :string,
                enum: [
                  'packagecloud'
                ],
                strict: true
              },
              on: {
                '$ref': '#/definitions/type/deploy_conditions'
              },
              allow_failure: {
                type: :boolean
              },
              skip_cleanup: {
                type: :boolean
              },
              edge: {
                '$ref': '#/definitions/type/deploy_edge'
              },
              username: {
                '$ref': '#/definitions/secure'
              },
              token: {
                '$ref': '#/definitions/secure'
              },
              repository: {
                type: :string
              },
              local_dir: {
                type: :string
              },
              dist: {
                type: :string
              },
              package_glob: {
                type: :string
              },
              force: {
                type: :boolean
              }
            },
            normal: true,
            prefix: :provider,
            changes: [
              {
                change: :enable
              }
            ],
            required: [
              :provider
            ]
          },
          {
            type: :string,
            enum: [
              'packagecloud'
            ],
            strict: true
          }
        ]
      )
    end
  end

  describe 'schema' do
    subject { described_class.new.schema }

    it do
      should eq(
        '$ref': '#/definitions/deploy/packagecloud'
      )
    end
  end
end
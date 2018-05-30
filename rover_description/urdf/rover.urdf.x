<robot
  name="rover">
  <link
    name="base_link">
    <inertial>
      <origin
        xyz="0 0.006579 0.0635"
        rpy="0 0 0" />
      <mass
        value="64.84" />
      <inertia
        ixx="1.6"
        ixy="0"
        ixz="0"
        iyy="1.3"
        iyz="0"
        izz="2.57" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/base_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/base_link.STL" />
      </geometry>
    </collision>
  </link>
  <link
    name="rocker_right_link">
    <inertial>
      <origin
        xyz="0.1238 -0.09416 0"
        rpy="0 0 0" />
      <mass
        value="35.94" />
      <--inertia
        ixx="1.46730132149275E-10"
        ixy="-5.6282721964586E-12"
        ixz="-4.94026178951337E-11"
        iyy="1.61699357168837E-10"
        iyz="-1.65022772930161E-11"
        izz="1.87293216469789E-11" /-->
      <inertia
        ixx="0.45"
        ixy="-0.43"
        ixz="0"
        iyy="1.6"
        iyz="0"
        izz="1.78" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker_right_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker_right_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="rocker_right_joint"
    type="revolute">
    <origin
      xyz="0.36238 0 0.1355"
      rpy="1.5707963267949 0 1.5707963267949" />
    <parent
      link="base_link" />
    <child
      link="rocker_right_link" />
    <axis
      xyz="0 0 -1" />
    <limit
      lower="-0.1"
      upper="0.1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="rocker2_right_link">
    <inertial>
      <origin
        xyz="0 -0.0747764618585285 0"
        rpy="0 0 0" />
      <mass
        value="27.6866236147603" />
      <!--inertia
        ixx="1.4872E-10"
        ixy="-1.304E-11"
        ixz="7.983E-11"
        iyy="1.889E-10"
        iyz="2.366E-11"
        izz="4.787E-11" /-->
      <inertia
        ixx="0.23"
        ixy="0"
        ixz="0"
        iyy="0.7"
        iyz="0"
        izz="0.72" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker2_right_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker2_right_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="rocker2_right_joint"
    type="revolute">
    <origin
      xyz="-0.2 -0.12 0"
      rpy="0 0 0" />
    <parent
      link="rocker_right_link" />
    <child
      link="rocker2_right_link" />
    <axis
      xyz="0 0 -1" />
    <limit
      lower="-0.1"
      upper="0.1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="wheel_rm_link">
    <inertial>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <mass
        value="21.27" />
      <inertia
        ixx="0.14"
        ixy="0"
        ixz="0"
        iyy="1.4664E-10"
        iyz="-6.607E-11"
        izz="2.977E-11" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_rm_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_rm_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="wheel_rm_joint"
    type="continuous">
    <origin
      xyz="0.2 -0.18 0.00224"
      rpy="3.14159265358979 0 3.14159265358979" />
    <parent
      link="rocker2_right_link" />
    <child
      link="wheel_rm_link" />
    <axis
      xyz="0 0 1" />
  </joint>
  <link
    name="wheel_rb_link">
    <inertial>
      <origin
        xyz="-2.0685E-11 8.507E-12 1.888E-11"
        rpy="0 0 0" />
      <mass
        value="21.2711171384753" />
      <inertia
        ixx="1.764E-10"
        ixy="7.238E-11"
        ixz="1.607E-10"
        iyy="3.226E-10"
        iyz="-6.6068E-11"
        izz="2.058E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_rb_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_rb_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="wheel_rb_joint"
    type="continuous">
    <origin
      xyz="-0.2 -0.18 0.00224"
      rpy="3.14159265358979 0 3.14159265358979" />
    <parent
      link="rocker2_right_link" />
    <child
      link="wheel_rb_link" />
    <axis
      xyz="0 0 1" />
  </joint>
  <link
    name="wheel_rf_link">
    <inertial>
      <origin
        xyz="2.06853423279085E-11 8.50683412600972E-12 1.88815629798E-11"
        rpy="0 0 0" />
      <mass
        value="21.2711171384753" />
      <inertia
        ixx="1.76410150830878E-10"
        ixy="-7.23799999962574E-11"
        ixz="-1.60652799991692E-10"
        iyy="3.22643875823316E-10"
        iyz="-6.60684639965837E-11"
        izz="2.0576627498936E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_rf_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_rf_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="wheel_rf_joint"
    type="continuous">
    <origin
      xyz="0.400000000000001 -0.300000000000001 0.00223999999999996"
      rpy="3.14159265358979 0 3.14159265358979" />
    <parent
      link="rocker_right_link" />
    <child
      link="wheel_rf_link" />
    <axis
      xyz="0 0 1" />
  </joint>
  <link
    name="rocker_left_link">
    <inertial>
      <origin
        xyz="0.123763973803345 -0.0941583160648748 1.10765285832315E-11"
        rpy="0 0 0" />
      <mass
        value="35.9378703370497" />
      <inertia
        ixx="1.45932896149299E-10"
        ixy="-5.6282721964586E-12"
        ixz="4.926647752395E-11"
        iyy="1.60902121168861E-10"
        iyz="1.64568014406875E-11"
        izz="1.87293216469789E-11" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker_left_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker_left_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="rocker_left_joint"
    type="revolute">
    <origin
      xyz="-0.36238 0 0.1355"
      rpy="1.5707963267949 0 1.5707963267949" />
    <parent
      link="base_link" />
    <child
      link="rocker_left_link" />
    <axis
      xyz="0 0 -1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="rocker2_left_link">
    <inertial>
      <origin
        xyz="7.6453010589006E-12 -0.0747764618585285 1.43775547023495E-11"
        rpy="0 0 0" />
      <mass
        value="27.6866236147603" />
      <inertia
        ixx="1.47917916657943E-10"
        ixy="-1.30408216088959E-11"
        ixz="-7.96135999969568E-11"
        iyy="1.88052847832661E-10"
        iyz="-2.35960626191008E-11"
        izz="4.78650688220501E-11" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker2_left_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/rocker2_left_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="rocker2_left_joint"
    type="revolute">
    <origin
      xyz="-0.2 -0.12 0"
      rpy="0 0 0" />
    <parent
      link="rocker_left_link" />
    <child
      link="rocker2_left_link" />
    <axis
      xyz="0 0 -1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="wheel_lm_link">
    <inertial>
      <origin
        xyz="-5.73106113874912E-19 8.50683412600972E-12 -1.85982340639157E-11"
        rpy="0 0 0" />
      <mass
        value="21.2711171384753" />
      <inertia
        ixx="1.72041297551384E-10"
        ixy="1.28891393669423E-22"
        ixz="-2.81790278535276E-22"
        iyy="1.42275022552643E-10"
        iyz="6.5076857996941E-11"
        izz="2.9766274998741E-11" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_lm_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_lm_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="wheel_lm_joint"
    type="continuous">
    <origin
      xyz="0.199999999999288 -0.180000000000774 0.00223999999999996"
      rpy="3.14159265358979 0 3.14159265358979" />
    <parent
      link="rocker2_left_link" />
    <child
      link="wheel_lm_link" />
    <axis
      xyz="0 0 1" />
  </joint>
  <link
    name="wheel_lb_link">
    <inertial>
      <origin
        xyz="-2.06852868167573E-11 8.50683412600972E-12 -1.85982340639157E-11"
        rpy="0 0 0" />
      <mass
        value="21.2711171384753" />
      <inertia
        ixx="1.7204129755082E-10"
        ixy="7.23799999960416E-11"
        ixz="-1.58241599992099E-10"
        iyy="3.18275022544168E-10"
        iyz="6.50768579963251E-11"
        izz="2.05766274989703E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_lb_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_lb_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="wheel_lb_joint"
    type="continuous">
    <origin
      xyz="-0.200000000000712 -0.179999999999217 0.00223999999999996"
      rpy="3.14159265358979 0 3.14159265358979" />
    <parent
      link="rocker2_left_link" />
    <child
      link="wheel_lb_link" />
    <axis
      xyz="0 0 1" />
  </joint>
  <link
    name="wheel_lf_link">
    <inertial>
      <origin
        xyz="2.06852868167573E-11 8.50680637043411E-12 -1.85981230416132E-11"
        rpy="0 0 0" />
      <mass
        value="21.2711171384753" />
      <inertia
        ixx="1.72041297551104E-10"
        ixy="-7.23799999962574E-11"
        ixz="1.58241599991817E-10"
        iyy="3.18275022543542E-10"
        iyz="6.5076857996635E-11"
        izz="2.0576627498936E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_lf_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/wheel_lf_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="wheel_lf_joint"
    type="continuous">
    <origin
      xyz="0.400000000000001 -0.300000000000001 0.00223999999999996"
      rpy="3.14159265358979 0 3.14159265358979" />
    <parent
      link="rocker_left_link" />
    <child
      link="wheel_lf_link" />
    <axis
      xyz="0 0 1" />
  </joint>
  <link
    name="arm_0_link">
    <inertial>
      <origin
        xyz="-1.91098359358932E-10 4.53883754183727E-13 0.00236199470061314"
        rpy="0 0 0" />
      <mass
        value="1.21176716350474" />
      <inertia
        ixx="2.89789913453057E-12"
        ixy="1.15783356374286E-13"
        ixz="-1.1885044532091E-11"
        iyy="5.16459354998554E-11"
        iyz="2.82284720853365E-14"
        izz="4.87485863653243E-11" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_0_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_0_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="arm_0_joint"
    type="revolute">
    <origin
      xyz="0 0.210515193598891 0.0489624999999985"
      rpy="7.25955218412464E-32 9.38232446049391E-16 1.5707963267949" />
    <parent
      link="base_link" />
    <child
      link="arm_0_link" />
    <axis
      xyz="0 0 1" />
    <limit
      lower="-0.1"
      upper="0.1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="arm_1_link">
    <inertial>
      <origin
        xyz="5.70228586571631E-11 0.199999999926062 1.35432278217558E-13"
        rpy="0 0 0" />
      <mass
        value="4.06093518714092" />
      <inertia
        ixx="8.19596540246735E-11"
        ixy="6.32090288688892E-11"
        ixz="-1.15783356448029E-13"
        iyy="4.8748586396372E-11"
        iyz="1.50129374959335E-13"
        izz="1.30707690421046E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_1_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_1_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="arm_1_joint"
    type="revolute">
    <origin
      xyz="0 0 0.024"
      rpy="1.5707963267949 9.38232446049391E-16 -3.14159265358979" />
    <parent
      link="arm_0_link" />
    <child
      link="arm_1_link" />
    <axis
      xyz="0 0 1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="arm_2_link">
    <inertial>
      <origin
        xyz="-0.0972534653091345 0.399999999765584 2.47803411503512E-13"
        rpy="0 0 0" />
      <mass
        value="2.21938287476847" />
      <inertia
        ixx="2.46063153924917E-10"
        ixy="1.60119337772666E-10"
        ixz="-1.69272762399419E-13"
        iyy="1.04193977198291E-10"
        iyz="2.60129374871078E-13"
        izz="3.50256581123208E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_2_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_2_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="arm_2_joint"
    type="revolute">
    <origin
      xyz="0 0 0"
      rpy="0 0 0" />
    <parent
      link="arm_1_link" />
    <child
      link="arm_2_link" />
    <axis
      xyz="0 0 1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="arm_3_link">
    <inertial>
      <origin
        xyz="-1.18985765684698E-10 -1.25787845071705E-13 -0.00306605480183964"
        rpy="0 0 0" />
      <mass
        value="4.37244564843694" />
      <inertia
        ixx="0.0373321298855914"
        ixy="-2.60129374921634E-13"
        ixz="-2.07468333902802E-10"
        iyy="0.037332130131654"
        iyz="-2.19327626086123E-13"
        izz="2.4606315398497E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_3_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_3_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="arm_3_joint"
    type="revolute">
    <origin
      xyz="-0.19133 0.4 0"
      rpy="-1.5707963267949 5.24719054993159E-14 1.5707963267949" />
    <parent
      link="arm_2_link" />
    <child
      link="arm_3_link" />
    <axis
      xyz="0 0 -1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="arm_4_link">
    <inertial>
      <origin
        xyz="-2.42167841335572E-10 0.0867098014740727 0.00174999999938321"
        rpy="0 0 0" />
      <mass
        value="2.14834023984285" />
      <inertia
        ixx="4.9805335725871E-10"
        ixy="-3.50074306430425E-10"
        ixz="-6.50323437179046E-13"
        iyy="2.46064597670935E-10"
        iyz="-9.25216868242266E-13"
        izz="7.44114517429647E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_4_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/arm_4_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="arm_4_joint"
    type="revolute">
    <origin
      xyz="0 0 0.184329999999946"
      rpy="1.5707963267949 9.11814027060312E-17 -5.30063717498099E-14" />
    <parent
      link="arm_3_link" />
    <child
      link="arm_4_link" />
    <axis
      xyz="0 0 1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="grip_base_link">
    <inertial>
      <origin
        xyz="-1.5014036021388E-12 -5.68075420037673E-10 0.0549576704128361"
        rpy="0 0 0" />
      <mass
        value="0.915826920533449" />
      <inertia
        ixx="9.71793066227735E-10"
        ixy="-6.50323436727953E-13"
        ixz="-1.1168476880315E-12"
        iyy="7.25731906226356E-10"
        iyz="-4.22581659714675E-10"
        izz="2.46064597501375E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/grip_base_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.898039215686275 0.917647058823529 0.929411764705882 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/grip_base_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="grip_base_joint"
    type="revolute">
    <origin
      xyz="0 0.171119999999994 0.00175000000001719"
      rpy="1.57079632679488 -1.5707963267949 0" />
    <parent
      link="arm_4_link" />
    <child
      link="grip_base_link" />
    <axis
      xyz="0 0 -1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="grip_right_link">
    <inertial>
      <origin
        xyz="0.0350008886397338 -0.0142009768870429 -3.6015697646441E-09"
        rpy="0 0 0" />
      <mass
        value="0.144453323106178" />
      <inertia
        ixx="2.47282727750258E-10"
        ixy="3.21362984581908E-11"
        ixz="-4.56420963125381E-10"
        iyy="1.09267614112233E-09"
        iyz="1.73251246090247E-11"
        izz="8.47833114526232E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/grip_right_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.792156862745098 0.819607843137255 0.933333333333333 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/grip_right_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="grip_right_joint"
    type="revolute">
    <origin
      xyz="-0.0203500000000001 0 0.0849999999999997"
      rpy="1.5707963267949 -1.5707963267949 0" />
    <parent
      link="grip_base_link" />
    <child
      link="grip_right_link" />
    <axis
      xyz="0 0 1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint>
  <link
    name="grip_left_link">
    <inertial>
      <origin
        xyz="0.0350008886397332 0.0142009768680419 -3.60157081935597E-09"
        rpy="0 0 0" />
      <mass
        value="0.144453323106178" />
      <inertia
        ixx="2.47472758123089E-10"
        ixy="-3.45488626844145E-11"
        ixz="-4.56420963125381E-10"
        iyy="1.09267614112232E-09"
        iyz="-1.8625771474157E-11"
        izz="8.48023144899062E-10" />
    </inertial>
    <visual>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/grip_left_link.STL" />
      </geometry>
      <material
        name="">
        <color
          rgba="0.792156862745098 0.819607843137255 0.933333333333333 1" />
      </material>
    </visual>
    <collision>
      <origin
        xyz="0 0 0"
        rpy="0 0 0" />
      <geometry>
        <mesh
          filename="package://rover_description/meshes/grip_left_link.STL" />
      </geometry>
    </collision>
  </link>
  <joint
    name="grip_left_joint"
    type="revolute">
    <origin
      xyz="0.0203499999999999 0 0.085"
      rpy="1.5707963267949 -1.5707963267949 0" />
    <parent
      link="grip_base_link" />
    <child
      link="grip_left_link" />
    <axis
      xyz="0 0 1" />
    <limit
      lower="0"
      upper="1"
      effort="1000"
      velocity="1000" />
  </joint-->
</robot>

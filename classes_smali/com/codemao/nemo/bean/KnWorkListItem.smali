.class public final Lcom/codemao/nemo/bean/KnWorkListItem;
.super Ljava/lang/Object;
.source "KnWorkListResponse.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final bcm_version:Ljava/lang/String;

.field private final blink_mode:Ljava/lang/String;

.field private check_result:Ljava/lang/Integer;

.field private final code:Ljava/lang/String;

.field private final collection_times:Ljava/lang/Integer;

.field private final comment_times:Ljava/lang/Integer;

.field private final cover_url:Ljava/lang/String;

.field private final create_time:Ljava/lang/Long;

.field private final fork_enable:Ljava/lang/Integer;

.field private final fork_times:Ljava/lang/Integer;

.field private final hardware_mode:Ljava/lang/Integer;

.field private final has_display_check_result:Ljava/lang/Integer;

.field private final if_default_cover:Ljava/lang/Integer;

.field private final if_shared:Ljava/lang/Integer;

.field private final invite_url_updated_at:Ljava/lang/Integer;

.field private final invte_url:Ljava/lang/String;

.field private final like_times:Ljava/lang/Integer;

.field private menuOpen:Z

.field private final n_blocks:Ljava/lang/Integer;

.field private final n_roles:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;

.field private final pic_need_check_file_url:Ljava/lang/String;

.field private final preview_url:Ljava/lang/String;

.field private final published_status:Ljava/lang/Integer;

.field private final stage_type:Ljava/lang/Integer;

.field private final unify_share_url:Ljava/lang/String;

.field private final update_time:Ljava/lang/Long;

.field private final user_id:Ljava/lang/Long;

.field private final view_times:Ljava/lang/Integer;

.field private final work_classify:Ljava/lang/Integer;

.field private final work_id:Ljava/lang/Long;

.field private final work_origin_type:Ljava/lang/String;

.field private final work_type:Ljava/lang/Integer;

.field private final work_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 36

    move-object v0, p0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 15
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    move-object v1, p2

    .line 16
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    move-object v1, p3

    .line 17
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    move-object v1, p4

    .line 18
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    move-object v1, p5

    .line 19
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    move-object v1, p6

    .line 20
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    move-object v1, p8

    .line 22
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    move-object v1, p9

    .line 23
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    move-object v1, p10

    .line 24
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    move-object v1, p11

    .line 25
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    move-object v1, p12

    .line 26
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    move-object v1, p13

    .line 27
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 28
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 29
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    move-object/from16 v1, p16

    .line 30
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    move-object/from16 v1, p17

    .line 31
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 32
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    move-object/from16 v1, p19

    .line 33
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    move-object/from16 v1, p20

    .line 34
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 35
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    move-object/from16 v1, p22

    .line 36
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    move-object/from16 v1, p23

    .line 37
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    move-object/from16 v1, p24

    .line 38
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    move-object/from16 v1, p25

    .line 39
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    move-object/from16 v1, p26

    .line 40
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    move-object/from16 v1, p27

    .line 41
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    move-object/from16 v1, p28

    .line 42
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    move-object/from16 v1, p29

    .line 43
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 44
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    move-object/from16 v1, p31

    .line 45
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    move-object/from16 v1, p32

    .line 46
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 47
    iput-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/KnWorkListItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/codemao/nemo/bean/KnWorkListItem;
    .registers 54

    move-object/from16 v0, p0

    move/from16 v1, p34

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-object v14, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    goto :goto_79

    :cond_77
    move-object/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    goto :goto_9b

    :cond_99
    move-object/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_a6

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    goto :goto_a8

    :cond_a6
    move-object/from16 v15, p17

    :goto_a8
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_b3

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    goto :goto_b5

    :cond_b3
    move-object/from16 v15, p18

    :goto_b5
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_c0

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    goto :goto_c2

    :cond_c0
    move-object/from16 v15, p19

    :goto_c2
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_cd

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    goto :goto_cf

    :cond_cd
    move-object/from16 v15, p20

    :goto_cf
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_da

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    goto :goto_dc

    :cond_da
    move-object/from16 v15, p21

    :goto_dc
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_e7

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    goto :goto_e9

    :cond_e7
    move-object/from16 v15, p22

    :goto_e9
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_f4

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    goto :goto_f6

    :cond_f4
    move-object/from16 v15, p23

    :goto_f6
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_101

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    goto :goto_103

    :cond_101
    move-object/from16 v15, p24

    :goto_103
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_10e

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    goto :goto_110

    :cond_10e
    move-object/from16 v15, p25

    :goto_110
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_11b

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    goto :goto_11d

    :cond_11b
    move-object/from16 v15, p26

    :goto_11d
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_128

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    goto :goto_12a

    :cond_128
    move-object/from16 v15, p27

    :goto_12a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_135

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    goto :goto_137

    :cond_135
    move-object/from16 v15, p28

    :goto_137
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_142

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    goto :goto_144

    :cond_142
    move-object/from16 v15, p29

    :goto_144
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_14f

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    goto :goto_151

    :cond_14f
    move-object/from16 v15, p30

    :goto_151
    const/high16 v16, 0x40000000  # 2.0f

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_15c

    iget-object v15, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    goto :goto_15e

    :cond_15c
    move-object/from16 v15, p31

    :goto_15e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_167

    iget-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    goto :goto_169

    :cond_167
    move-object/from16 v1, p32

    :goto_169
    and-int/lit8 v16, p35, 0x1

    move-object/from16 p32, v1

    if-eqz v16, :cond_172

    iget-object v1, v0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    goto :goto_174

    :cond_172
    move-object/from16 v1, p33

    :goto_174
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p31, v15

    move-object/from16 p33, v1

    invoke-virtual/range {p0 .. p33}, Lcom/codemao/nemo/bean/KnWorkListItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/KnWorkListItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component14()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component15()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final component16()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method public final component17()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component18()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    return-object v0
.end method

.method public final component19()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component22()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component23()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component24()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component25()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component26()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component27()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component28()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final component30()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component31()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/KnWorkListItem;
    .registers 69

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    new-instance v34, Lcom/codemao/nemo/bean/KnWorkListItem;

    move-object/from16 v0, v34

    invoke-direct/range {v0 .. v33}, Lcom/codemao/nemo/bean/KnWorkListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v34
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/KnWorkListItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/KnWorkListItem;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    return v2

    :cond_9b
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    return v2

    :cond_a6
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    return v2

    :cond_b1
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    return v2

    :cond_bc
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c7

    return v2

    :cond_c7
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    return v2

    :cond_d2
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    return v2

    :cond_dd
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    return v2

    :cond_e8
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f3

    return v2

    :cond_f3
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    return v2

    :cond_fe
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    return v2

    :cond_109
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    return v2

    :cond_114
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11f

    return v2

    :cond_11f
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    return v2

    :cond_12a
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    return v2

    :cond_135
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_140

    return v2

    :cond_140
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14b

    return v2

    :cond_14b
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    return v2

    :cond_156
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_161

    return v2

    :cond_161
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16c

    return v2

    :cond_16c
    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_177

    return v2

    :cond_177
    return v0
.end method

.method public final getBcm_version()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlink_mode()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlocks()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCheckFail()Z
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final getCheck_result()Ljava/lang/Integer;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getClassifyModel()Ljava/lang/String;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_10

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const-string/jumbo v0, "教研"

    return-object v0

    .line 127
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez v0, :cond_16

    goto :goto_20

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_20

    const-string/jumbo v0, "课堂"

    return-object v0

    :cond_20
    :goto_20
    const-string v0, ""

    return-object v0
.end method

.method public final getCode()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollectionTimes()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, "0"

    :cond_c
    return-object v0
.end method

.method public final getCollection_times()Ljava/lang/Integer;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getComment_times()Ljava/lang/Integer;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover_url()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreate_time()Ljava/lang/Long;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final getEnableRename()Z
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getForkTimes()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, "0"

    :cond_c
    return-object v0
.end method

.method public final getFork_enable()Ljava/lang/Integer;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFork_times()Ljava/lang/Integer;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHardware_mode()Ljava/lang/Integer;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHas_display_check_result()Ljava/lang/Integer;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIf_default_cover()Ljava/lang/Integer;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIf_shared()Ljava/lang/Integer;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInvite_url_updated_at()Ljava/lang/Integer;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInvte_url()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getLandscape()Z
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final getLikeTimes()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, "0"

    :cond_c
    return-object v0
.end method

.method public final getLike_times()Ljava/lang/Integer;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMenuOpen()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->menuOpen:Z

    return v0
.end method

.method public final getMenus()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MineWorkMenuItem;",
            ">;"
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result v1

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isTanYueCourse()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getKnPublished(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getN_blocks()Ljava/lang/Integer;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getN_roles()Ljava/lang/Integer;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenSource()Z
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-lez v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public final getPic_need_check_file_url()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreview_url()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishedIcon()I
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0e0190

    goto :goto_d

    :cond_a
    const v0, 0x7f0e018f

    :goto_d
    return v0
.end method

.method public final getPublished_status()Ljava/lang/Integer;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRoles()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getShareUrl()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public final getShowCheckFail()Z
    .registers 3

    .line 145
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCheckFail()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez v0, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public final getStage_type()Ljava/lang/Integer;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getToolMode()Ljava/lang/String;
    .registers 2

    const-string v0, "normal"

    return-object v0
.end method

.method public final getToolType()Ljava/lang/String;
    .registers 2

    const-string v0, "KN"

    return-object v0
.end method

.method public final getUnify_share_url()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdate_time()Ljava/lang/Long;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUser_id()Ljava/lang/Long;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method public final getViewTimes()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, "0"

    :cond_c
    return-object v0
.end method

.method public final getView_times()Ljava/lang/Integer;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWorkModel()Ljava/lang/String;
    .registers 2

    .line 108
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isHardware()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "硬件"

    return-object v0

    .line 111
    :cond_a
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isKids()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "幼儿"

    return-object v0

    :cond_14
    const-string v0, ""

    return-object v0
.end method

.method public final getWork_classify()Ljava/lang/Integer;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWork_id()Ljava/lang/Long;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    return-object v0
.end method

.method public final getWork_origin_type()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    return-object v0
.end method

.method public final getWork_type()Ljava/lang/Integer;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWork_url()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    if-nez v2, :cond_61

    const/4 v2, 0x0

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    if-nez v2, :cond_6e

    const/4 v2, 0x0

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    if-nez v2, :cond_7b

    const/4 v2, 0x0

    goto :goto_7f

    :cond_7b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    if-nez v2, :cond_88

    const/4 v2, 0x0

    goto :goto_8c

    :cond_88
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    if-nez v2, :cond_95

    const/4 v2, 0x0

    goto :goto_99

    :cond_95
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    if-nez v2, :cond_a2

    const/4 v2, 0x0

    goto :goto_a6

    :cond_a2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    if-nez v2, :cond_af

    const/4 v2, 0x0

    goto :goto_b3

    :cond_af
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    if-nez v2, :cond_bc

    const/4 v2, 0x0

    goto :goto_c0

    :cond_bc
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    if-nez v2, :cond_c9

    const/4 v2, 0x0

    goto :goto_cd

    :cond_c9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_cd
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    if-nez v2, :cond_d6

    const/4 v2, 0x0

    goto :goto_da

    :cond_d6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_da
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    if-nez v2, :cond_e3

    const/4 v2, 0x0

    goto :goto_e7

    :cond_e3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    if-nez v2, :cond_f0

    const/4 v2, 0x0

    goto :goto_f4

    :cond_f0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    if-nez v2, :cond_fd

    const/4 v2, 0x0

    goto :goto_101

    :cond_fd
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_101
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    if-nez v2, :cond_10a

    const/4 v2, 0x0

    goto :goto_10e

    :cond_10a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    if-nez v2, :cond_117

    const/4 v2, 0x0

    goto :goto_11b

    :cond_117
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    if-nez v2, :cond_124

    const/4 v2, 0x0

    goto :goto_128

    :cond_124
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_128
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    if-nez v2, :cond_131

    const/4 v2, 0x0

    goto :goto_135

    :cond_131
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_135
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    if-nez v2, :cond_13e

    const/4 v2, 0x0

    goto :goto_142

    :cond_13e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_142
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    if-nez v2, :cond_14b

    const/4 v2, 0x0

    goto :goto_14f

    :cond_14b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_14f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    if-nez v2, :cond_158

    const/4 v2, 0x0

    goto :goto_15c

    :cond_158
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_15c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    if-nez v2, :cond_165

    const/4 v2, 0x0

    goto :goto_169

    :cond_165
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_169
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    if-nez v2, :cond_172

    const/4 v2, 0x0

    goto :goto_176

    :cond_172
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_176
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    if-nez v2, :cond_17f

    const/4 v2, 0x0

    goto :goto_183

    :cond_17f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_183
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    if-nez v2, :cond_18c

    const/4 v2, 0x0

    goto :goto_190

    :cond_18c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_190
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    if-nez v2, :cond_199

    const/4 v2, 0x0

    goto :goto_19d

    :cond_199
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    if-nez v2, :cond_1a5

    goto :goto_1a9

    :cond_1a5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1a9
    add-int/2addr v0, v1

    return v0
.end method

.method public final isHardware()Z
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    if-nez v0, :cond_8

    goto :goto_10

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public final isKids()Z
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    const-string v1, "kids"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPublished()Z
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    if-nez v0, :cond_8

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method public final isTanYueCourse()Z
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    const-string v1, "TANYUE_COURSE"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setCheck_result(Ljava/lang/Integer;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    return-void
.end method

.method public final setMenuOpen(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->menuOpen:Z

    return-void
.end method

.method public final showTime()Ljava/lang/String;
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_1b

    .line 54
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-string v2, "yyyy-MM-dd HH:mm"

    .line 53
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "millis2String(\n         …yy-MM-dd HH:mm\"\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnWorkListItem(bcm_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->bcm_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", create_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->create_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", if_shared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_shared:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", invite_url_updated_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invite_url_updated_at:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", invte_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->invte_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", n_blocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_blocks:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", n_roles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->n_roles:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pic_need_check_file_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->pic_need_check_file_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preview_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->preview_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->cover_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", published_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->published_status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stage_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->stage_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", update_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->update_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->user_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_classify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_classify:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", check_result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->check_result:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->view_times:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fork_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_times:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", like_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->like_times:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", comment_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->comment_times:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collection_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->collection_times:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fork_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->fork_enable:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hardware_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->hardware_mode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blink_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->blink_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", if_default_cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->if_default_cover:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", has_display_check_result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->has_display_check_result:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unify_share_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->unify_share_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", work_origin_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/KnWorkListItem;->work_origin_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
.super Ljava/lang/Object;
.source "OfflinePackageData.kt"


# instance fields
.field private final env:Ljava/lang/String;

.field private final env_tag:Ljava/lang/String;

.field private final force_inline:Ljava/lang/Boolean;

.field private final json_url:Ljava/lang/String;

.field private level:I

.field private final md5:Ljava/lang/String;

.field private final project_name:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private final zip_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    .line 105
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    .line 108
    iput-object p8, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    goto :goto_45

    :cond_43
    move-object/from16 v1, p8

    :goto_45
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 19

    new-instance v9, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    return v2

    :cond_64
    return v0
.end method

.method public final getEnv()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnv_tag()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getForce_inline()Ljava/lang/Boolean;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getJson_url()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->level:I

    return v0
.end method

.method public final getMd5()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final getProject_name()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getToolType()Ljava/lang/String;
    .registers 3

    .line 114
    sget-object v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;->INSTANCE:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;->projectName2ToolType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getZip_url()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    if-nez v2, :cond_60

    goto :goto_64

    :cond_60
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_64
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDataAvailable()Z
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    :goto_30
    if-nez v0, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1
.end method

.method public final setLevel(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->level:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflinePackageInfoItem(md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", env="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", env_tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->env_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", force_inline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->force_inline:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", json_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->json_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", project_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->project_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zip_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->zip_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

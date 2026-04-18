.class public final Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;
.super Ljava/lang/Object;
.source "OfflinePackageData.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflinePackageData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflinePackageData.kt\ncom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1002#2,2:138\n1851#2,2:140\n*S KotlinDebug\n*F\n+ 1 OfflinePackageData.kt\ncom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse\n*L\n82#1:138,2\n83#1:140,2\n*E\n"
.end annotation


# instance fields
.field private firstToolType:Ljava/lang/String;

.field private final kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

.field private final python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

.field private final tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    .line 53
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    .line 54
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->copy(Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object v0
.end method

.method public final component2()Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object v0
.end method

.method public final component3()Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object v0
.end method

.method public final copy(Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;
    .registers 5

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;-><init>(Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getAvailableItems()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->setLevel(I)V

    .line 66
    :goto_e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v1, :cond_13

    goto :goto_17

    :cond_13
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->setLevel(I)V

    .line 67
    :goto_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v1, :cond_1c

    goto :goto_20

    :cond_1c
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->setLevel(I)V

    .line 68
    :goto_20
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->firstToolType:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x726edb24

    if-eq v3, v4, :cond_5b

    const v4, -0x3e8b3886

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x963

    if-eq v3, v4, :cond_38

    goto :goto_6c

    :cond_38
    const-string v3, "KN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_6c

    .line 71
    :cond_41
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v1, :cond_46

    goto :goto_6c

    :cond_46
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->setLevel(I)V

    goto :goto_6c

    :cond_4a
    const-string v3, "TANYUE_KN"

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 69
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v1, :cond_57

    goto :goto_6c

    :cond_57
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->setLevel(I)V

    goto :goto_6c

    :cond_5b
    const-string v3, "PYTHON"

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_6c

    .line 70
    :cond_64
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v1, :cond_69

    goto :goto_6c

    :cond_69
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->setLevel(I)V

    .line 73
    :cond_6c
    :goto_6c
    sget-object v1, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    const/4 v4, 0x0

    if-eqz v3, :cond_78

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->getProject_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_79

    :cond_78
    move-object v3, v4

    :goto_79
    invoke-virtual {v1, v3}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;->isWorkEnableOffline$toolssdk_release(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 74
    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_87
    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-eqz v3, :cond_90

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->getProject_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_91

    :cond_90
    move-object v3, v4

    :goto_91
    invoke-virtual {v1, v3}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;->isWorkEnableOffline$toolssdk_release(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 77
    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_9f
    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-eqz v3, :cond_a7

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->getProject_name()Ljava/lang/String;

    move-result-object v4

    :cond_a7
    invoke-virtual {v1, v4}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;->isWorkEnableOffline$toolssdk_release(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 80
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_b5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_c3

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse$getAvailableItems$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse$getAvailableItems$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1851
    :cond_c3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    .line 84
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "排序后："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->getToolType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->getLevel()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    goto :goto_c7

    :cond_fa
    return-object v0
.end method

.method public final getItem(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 4

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x726edb24

    if-eq v0, v1, :cond_30

    const v1, -0x3e8b3886

    if-eq v0, v1, :cond_24

    const/16 v1, 0x963

    if-eq v0, v1, :cond_18

    goto :goto_38

    :cond_18
    const-string v0, "KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_38

    .line 92
    :cond_21
    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object p1

    :cond_24
    const-string v0, "TANYUE_KN"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_38

    .line 93
    :cond_2d
    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object p1

    :cond_30
    const-string v0, "PYTHON"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    :goto_38
    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_3a
    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object p1
.end method

.method public final getKn()Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object v0
.end method

.method public final getPython()Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object v0
.end method

.method public final getTanyue_kn()Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    return v0
.end method

.method public final setFirstToolType(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->firstToolType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflinePackageInfoResponse(tanyue_kn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->tanyue_kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", python="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->python:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoResponse;->kn:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageInfoItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

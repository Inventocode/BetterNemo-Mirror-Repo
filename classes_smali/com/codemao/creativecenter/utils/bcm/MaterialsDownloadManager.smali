.class public final Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;
.super Ljava/lang/Object;
.source "MaterialsDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialsDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialsDownloadManager.kt\ncom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1828#2,2:319\n1828#2,3:321\n1830#2:324\n1828#2,2:325\n1828#2,3:327\n1830#2:330\n*E\n*S KotlinDebug\n*F\n+ 1 MaterialsDownloadManager.kt\ncom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager\n*L\n284#1,2:319\n284#1,3:321\n284#1:324\n300#1,2:325\n300#1,3:327\n300#1:330\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;


# instance fields
.field private actorMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

.field private audioMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

.field private downloadUrl:Ljava/lang/String;

.field private sceneMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "downloadUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->downloadUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActorMaterials()Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->actorMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    return-object v0
.end method

.method public final getAudioMaterials()Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->audioMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    return-object v0
.end method

.method public final getDownloadUrl()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPathFromUrl(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string v0, "itemPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_9

    return-object v0

    :cond_9
    if-eqz p2, :cond_72

    .line 284
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_72

    .line 320
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_28

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_28
    check-cast v3, Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    if-eqz v3, :cond_70

    .line 285
    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getNameUrlMap()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 322
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_48

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_48
    check-cast v5, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;

    if-eqz v5, :cond_51

    .line 286
    invoke-virtual {v5}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_52

    :cond_51
    move-object v3, v0

    .line 287
    :goto_52
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 288
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    invoke-virtual {v3, v5, p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getResourcePath(Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_6e

    return-object v3

    :cond_6e
    move v3, v6

    goto :goto_37

    :cond_70
    move v2, v4

    goto :goto_17

    :cond_72
    return-object v0
.end method

.method public final getSceneMaterials()Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->sceneMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    return-object v0
.end method

.method public final updateMaterialsInfo()V
    .registers 3

    .line 275
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getActorConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->readMaterialsItemInfo(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->actorMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    .line 276
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getAudioConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->readMaterialsItemInfo(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->audioMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    .line 277
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getSceneConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->readMaterialsItemInfo(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->sceneMaterials:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    return-void
.end method

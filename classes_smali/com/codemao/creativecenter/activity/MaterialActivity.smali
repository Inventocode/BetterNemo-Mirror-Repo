.class public Lcom/codemao/creativecenter/activity/MaterialActivity;
.super Lcom/codemao/creativecenter/base/BaseCreativeActivity;
.source "MaterialActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/codemao/creativecenter/callback/ViewNameInterFace;
.implements Lcom/codemao/creativecenter/callback/CreativeLocalAudioMoveInterface;


# instance fields
.field private REQUEST_AUDIO:I

.field private REQUEST_STORAGE:I

.field private baseBackgroundStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field private canRecord:Z

.field collectMaterialDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;"
        }
    .end annotation
.end field

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private curWorkUid:Ljava/lang/String;

.field private currentType:I

.field private dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

.field private exitRecordName:Ljava/lang/String;

.field private exitVoiceName:Ljava/lang/String;

.field private hasAvailableMemory:Z

.field private idPositionActor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private idPositionBg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private idPositionSound:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private indexRevertSparseMap:Landroid/util/SparseIntArray;

.field private indexSparseMap:Landroid/util/SparseIntArray;

.field private isClickSelection:Z

.field private isLandscapeStage:Z

.field private final isPad:Z

.field private leftBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialLeftBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

.field private materialBottomInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

.field private materialHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

.field private materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

.field private materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

.field private materialsUrl:Ljava/lang/String;

.field private parentPath:Ljava/lang/String;

.field public permissions:[Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private selectDatas:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private themeActorStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field private themeBackgroundStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field private themeListPop:Lcom/codemao/creativecenter/pop/ThemeListPop;

.field private themeVersion:I

.field private webViewActorStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorListBean;",
            ">;"
        }
    .end annotation
.end field

.field private webviewBackgroundStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field private workId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6NvhmWLS6RaJ9WtdhfZgSG5CPzE(Lcom/codemao/creativecenter/activity/MaterialActivity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->lambda$onCreate$0(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bjlY8gMbgHvNQ900pE_Sdiwd9pY(Lcom/codemao/creativecenter/activity/MaterialActivity;Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->lambda$convertActorData$1(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k8ZipbLeI7n0KOMoImTmygTKtRQ(Lcom/codemao/creativecenter/activity/MaterialActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->lambda$copyAndImportAudio$3(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$q1Bm7u7cCGXujqD5WBIA7ZIIFx4(Lcom/codemao/creativecenter/activity/MaterialActivity;Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->lambda$convertBackGroundData$2(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 137
    invoke-direct {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;-><init>()V

    .line 150
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isPad:Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->permissions:[Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    const/16 v0, 0x37

    .line 153
    iput v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->REQUEST_AUDIO:I

    const/16 v0, 0x38

    .line 154
    iput v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->REQUEST_STORAGE:I

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    .line 157
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    .line 158
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionSound:Ljava/util/HashMap;

    .line 169
    new-instance v0, Landroidx/databinding/ObservableField;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    .line 177
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->hasAvailableMemory:Z

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isLandscapeStage:Z

    .line 188
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isClickSelection:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroidx/databinding/ObservableField;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionSound:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/codemao/creativecenter/activity/MaterialActivity;Ljava/lang/String;)I
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/activity/MaterialActivity;)I
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getCollectionHasNotDownloadCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/codemao/creativecenter/activity/MaterialActivity;I)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->notifyDownloadStatus(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/creativecenter/activity/MaterialActivity;Z)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->startBlackActivity(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->startDissmissCountDown()V

    return-void
.end method

.method static synthetic access$1900(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->parentPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/activity/MaterialActivity;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isClickSelection:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->goRecord()V

    return-void
.end method

.method static synthetic access$202(Lcom/codemao/creativecenter/activity/MaterialActivity;Z)Z
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isClickSelection:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/codemao/creativecenter/activity/MaterialActivity;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeVersion:I

    return p1
.end method

.method static synthetic access$2200(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateVersion()V

    return-void
.end method

.method static synthetic access$2302(Lcom/codemao/creativecenter/activity/MaterialActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroid/util/SparseIntArray;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I
    .registers 1

    .line 137
    iget p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/activity/MaterialActivity;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isPad:Z

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroid/util/SparseIntArray;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    return-object p0
.end method

.method private addBaseCloudMaterial()V
    .registers 12

    .line 1745
    :try_start_0
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_ca

    const/4 v0, 0x2

    .line 1747
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    .line 1748
    sget v5, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_theme:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_29

    :cond_28
    const/4 v1, 0x2

    .line 1755
    :goto_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1756
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    if-nez v4, :cond_41

    .line 1758
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->generateBaseBackgroundStyle()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    .line 1760
    :cond_41
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c9

    .line 1761
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    .line 1765
    :goto_51
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a7

    .line 1766
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 1767
    new-instance v7, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 1768
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1769
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getId()I

    move-result v7

    .line 1770
    iget-object v8, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    add-int v10, v5, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, ""

    .line 1771
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1772
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_91
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1773
    invoke-virtual {v8, v7}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 1774
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 1777
    :cond_a7
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1, v4, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1778
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1779
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateIndex()V

    .line 1780
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->resetSelection()V

    .line 1781
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1782
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_df

    :cond_c9
    return-void

    :cond_ca
    const/4 v1, 0x7

    if-ne v0, v1, :cond_df

    .line 1784
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->convertSoundData()V

    .line 1785
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1786
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1787
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setSelection(I)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_df} :catch_df

    :catch_df
    :cond_df
    :goto_df
    return-void
.end method

.method private addNewThemeMaterial(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;)V"
        }
    .end annotation

    .line 1658
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x2

    .line 1659
    :goto_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1661
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    .line 1662
    sget v6, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_theme:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v3, 0x2

    goto :goto_36

    :cond_35
    const/4 v3, 0x1

    :goto_36
    const/4 v4, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_f6

    .line 1670
    new-instance v7, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    sget v8, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_theme:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v9, v8}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 1671
    iget-object v8, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    if-eqz v8, :cond_57

    .line 1672
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v3, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5d

    .line 1675
    :cond_57
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v1, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v3

    .line 1677
    :goto_5d
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->resetSelection()V

    .line 1678
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1680
    iget v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v7, 0x3

    const/4 v8, -0x2

    if-ne v3, v7, :cond_b2

    .line 1681
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_77
    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1682
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1683
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v8, :cond_77

    if-eq v9, v4, :cond_77

    add-int/2addr v10, v5

    .line 1685
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 1688
    :cond_a4
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f6

    .line 1690
    :cond_b2
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bc
    :goto_bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1691
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1692
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v4, :cond_bc

    if-eq v9, v8, :cond_bc

    add-int/2addr v10, v5

    .line 1694
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bc

    .line 1697
    :cond_e9
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f6
    :goto_f6
    const/4 v1, 0x0

    .line 1700
    :goto_f7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_12b

    .line 1701
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 1702
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1703
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_112
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_128

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1704
    invoke-virtual {v7, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 1705
    invoke-virtual {v7, v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 1706
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_112

    :cond_128
    add-int/lit8 v1, v1, 0x1

    goto :goto_f7

    .line 1709
    :cond_12b
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {p1, v0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1710
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateIndex()V

    .line 1711
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1712
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1713
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1714
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {p1, v5}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setSelection(I)V

    .line 1715
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->showFirstThemeSuccess()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14e} :catch_14e

    :catch_14e
    return-void
.end method

.method private cancelSelectCollectionImages()V
    .registers 4

    .line 1269
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    const/4 v2, 0x0

    .line 1270
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setDeleteSelect(Z)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method private checkMusicFilePermission()Z
    .registers 11

    .line 1335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_9

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    goto :goto_b

    :cond_9
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1338
    :goto_b
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    return v2

    .line 1341
    :cond_13
    sget-object v3, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    iget v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->REQUEST_STORAGE:I

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_permission_upload:I

    .line 1343
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v8, v1

    new-instance v9, Lcom/codemao/creativecenter/activity/MaterialActivity$11;

    invoke-direct {v9, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$11;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    const-string v7, "CREATE_TYPE_OPEN_LOCAL_MUSICE"

    move-object v4, p0

    .line 1341
    invoke-virtual/range {v3 .. v9}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionInOrigin(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    return v1
.end method

.method private checkRecordPermisson()Z
    .registers 9

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 1369
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    return v0

    .line 1372
    :cond_a
    sget-object v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    iget v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->REQUEST_AUDIO:I

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_record:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/codemao/creativecenter/activity/MaterialActivity$12;

    invoke-direct {v7, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$12;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    const-string v5, "CREATE_TYPE_RECORD_MUSIC"

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionInOrigin(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    const/4 v0, 0x0

    return v0
.end method

.method private converThemeActorData(I)V
    .registers 7

    .line 546
    new-instance v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_theme:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 547
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 551
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeActorStyle:Ljava/util/List;

    if-nez p1, :cond_4a

    .line 552
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->generalThemeActorStyle()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeActorStyle:Ljava/util/List;

    :cond_4a
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 554
    :goto_4c
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeActorStyle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_88

    .line 555
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeActorStyle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 556
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 558
    invoke-virtual {v3, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 559
    invoke-virtual {v3, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 560
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_88
    return-void
.end method

.method private converThemeBgData(I)V
    .registers 7

    .line 605
    new-instance v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_theme:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 606
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeBackgroundStyle:Ljava/util/List;

    if-nez p1, :cond_4a

    .line 611
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->generalThemeBackgroundStyle()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeBackgroundStyle:Ljava/util/List;

    :cond_4a
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 613
    :goto_4c
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeBackgroundStyle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_88

    .line 614
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeBackgroundStyle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 615
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 617
    invoke-virtual {v3, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 618
    invoke-virtual {v3, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 619
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_88
    return-void
.end method

.method private convertActorData(Ljava/util/List;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorListBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e9

    .line 904
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_e9

    .line 905
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 906
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 907
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 908
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 909
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->initHeader()V

    .line 912
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 913
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->convertMaterialActorData(I)V

    const/4 v1, 0x2

    .line 917
    :cond_3c
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    .line 918
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->converThemeActorData(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_4d
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 921
    :goto_4f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_dc

    .line 922
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorListBean;

    .line 923
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorListBean;->getId()I

    move-result v4

    .line 924
    new-instance v5, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorListBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorListBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 925
    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x0

    .line 929
    :goto_9b
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorListBean;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d8

    .line 930
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorListBean;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 931
    iget-object v7, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 933
    invoke-virtual {v7, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 934
    iget-object v8, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    :cond_d5
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    :cond_d8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4f

    .line 941
    :cond_dc
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v1, p1

    .line 942
    new-instance p1, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-direct {p0, v1, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->requestCollectMaterialData(ILkotlin/jvm/functions/Function1;)V

    :cond_e9
    :goto_e9
    return-void
.end method

.method private convertBackGroundData(Ljava/util/List;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f8

    .line 953
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_f8

    .line 954
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 955
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 956
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 957
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 958
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->initHeader()V

    .line 960
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x2

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x1

    .line 964
    :goto_2c
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 965
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->convertMaterialBgData(I)V

    add-int/lit8 v0, v0, 0x1

    .line 968
    :cond_47
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_58

    .line 969
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->converThemeBgData(I)V

    add-int/lit8 v0, v0, 0x1

    .line 973
    :cond_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 974
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    if-nez p1, :cond_6b

    .line 975
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->generateBaseBackgroundStyle()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    .line 977
    :cond_6b
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_78

    .line 978
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->baseBackgroundStyle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_78
    const/4 p1, 0x0

    .line 980
    :goto_79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_eb

    .line 981
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 982
    new-instance v3, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 983
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getId()I

    move-result v3

    .line 985
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    const-string v5, " "

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 989
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 990
    invoke-virtual {v4, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 991
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_e8
    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    .line 998
    :cond_eb
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    .line 999
    new-instance p1, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-direct {p0, v0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->requestCollectMaterialData(ILkotlin/jvm/functions/Function1;)V

    :cond_f8
    :goto_f8
    return-void
.end method

.method private convertMaterialActorData(I)V
    .registers 11

    .line 509
    new-instance v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_course:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 510
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 513
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    if-eqz p1, :cond_d8

    .line 515
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 517
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_materials:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_55
    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    .line 519
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getNameUrlMap()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 520
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    .line 521
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 522
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 523
    new-instance v5, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 524
    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setId(I)V

    .line 525
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v5, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setUrl(Ljava/util/List;)V

    .line 527
    invoke-virtual {v5, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setResourcePathList(Ljava/util/List;)V

    .line 528
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getNameUrlMap()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;

    .line 529
    sget-object v6, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    iget-object v7, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getActorPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 530
    invoke-virtual {v6, v2, v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getResourcePath(Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 534
    :cond_ca
    invoke-virtual {v5, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    const/4 v0, 0x0

    .line 535
    invoke-virtual {v5, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 536
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    :cond_d8
    return-void
.end method

.method private convertMaterialBgData(I)V
    .registers 11

    .line 567
    new-instance v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_course:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 568
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 571
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 572
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    if-eqz p1, :cond_d4

    .line 573
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d4

    .line 575
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    const-string v2, " "

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_51
    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    .line 578
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getNameUrlMap()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 579
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    .line 580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 581
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 582
    new-instance v5, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 583
    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setId(I)V

    .line 584
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v5, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setUrl(Ljava/util/List;)V

    .line 586
    invoke-virtual {v5, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setResourcePathList(Ljava/util/List;)V

    .line 587
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getNameUrlMap()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;

    .line 588
    sget-object v6, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    iget-object v7, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getScenePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 589
    invoke-virtual {v6, v2, v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getResourcePath(Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 590
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 593
    :cond_c6
    invoke-virtual {v5, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    const/4 v0, 0x0

    .line 594
    invoke-virtual {v5, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 595
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_51

    :cond_d4
    return-void
.end method

.method private convertMaterialSoundData(I)V
    .registers 11

    .line 1043
    new-instance v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_course:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 1044
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionSound:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1048
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1049
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    if-eqz p1, :cond_f2

    .line 1050
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f2

    .line 1054
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4a
    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    .line 1055
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getNameUrlMap()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 1056
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    .line 1057
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    new-instance v5, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 1060
    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setId(I)V

    .line 1061
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v5, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setUrl(Ljava/util/List;)V

    .line 1063
    invoke-virtual {v5, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setResourcePathList(Ljava/util/List;)V

    .line 1064
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->getNameUrlMap()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8b
    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;

    .line 1065
    sget-object v6, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    iget-object v7, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1066
    invoke-virtual {v6, v2, v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getResourcePath(Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1067
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8b

    .line 1070
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8b

    .line 1071
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    if-le v7, v6, :cond_8b

    .line 1072
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setExt(Ljava/lang/String;)V

    goto :goto_8b

    .line 1076
    :cond_e8
    invoke-virtual {v5, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 1077
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4a

    :cond_f2
    return-void
.end method

.method private convertSoundData()V
    .registers 10

    .line 1009
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1010
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1011
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1012
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1013
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->initHeader()V

    .line 1016
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;->getMaterialList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 1017
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->convertMaterialSoundData(I)V

    const/4 v1, 0x2

    .line 1021
    :cond_32
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->generateBaseSoundStyle()Ljava/util/List;

    move-result-object v0

    .line 1022
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_41

    return-void

    :cond_41
    const/4 v2, 0x0

    .line 1025
    :goto_42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b9

    .line 1026
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;

    .line 1027
    new-instance v4, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getLeftDrawableRes(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 1028
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;->getId()I

    move-result v4

    .line 1030
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionSound:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/MaterialSoundBean;

    .line 1035
    new-instance v6, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v6, v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>(Lcom/codemao/creativestore/bean/MaterialSoundBean;)V

    .line 1036
    invoke-virtual {v6, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 1037
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_b9
    return-void
.end method

.method private getCollectionHasNotDownloadCount()I
    .registers 5

    .line 792
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 793
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return v1
.end method

.method private getLeftDrawableRes(Ljava/lang/String;)I
    .registers 4

    .line 625
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_theme:I

    .line 626
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_collect:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 627
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_collect:I

    goto/16 :goto_e3

    .line 628
    :cond_12
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_course:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 629
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_course:I

    goto/16 :goto_e3

    .line 630
    :cond_22
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_theme:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_e3

    .line 632
    :cond_30
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_sprite:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 633
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_roler:I

    goto/16 :goto_e3

    .line 634
    :cond_40
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_interface:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 635
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_face:I

    goto/16 :goto_e3

    .line 636
    :cond_50
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_promps:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 637
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_daoju:I

    goto/16 :goto_e3

    .line 638
    :cond_60
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_animation:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 639
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_light:I

    goto/16 :goto_e3

    .line 640
    :cond_70
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_pattern:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_shape:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    goto :goto_e1

    .line 642
    :cond_89
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_life:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 643
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_life:I

    goto :goto_e3

    .line 644
    :cond_98
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_nature:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 645
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_nature:I

    goto :goto_e3

    .line 646
    :cond_a7
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_game:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 647
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_game:I

    goto :goto_e3

    .line 648
    :cond_b6
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_music:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_audio:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    goto :goto_de

    .line 650
    :cond_cf
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_sound_effect:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 651
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_sound:I

    goto :goto_e3

    .line 649
    :cond_de
    :goto_de
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_music:I

    goto :goto_e3

    .line 641
    :cond_e1
    :goto_e1
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_material_star:I

    :cond_e3
    :goto_e3
    return v0
.end method

.method private getThemeVersion()V
    .registers 3

    .line 1846
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-interface {v0}, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;->getThemeMaterialVersion()Lio/reactivex/Observable;

    move-result-object v0

    .line 1847
    invoke-virtual {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1848
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$13;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$13;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    .line 1849
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private goRecord()V
    .registers 5

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1318
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->exitVoiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1319
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->exitVoiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    :cond_12
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1321
    instance-of v3, v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz v3, :cond_18

    .line 1322
    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_33

    const-string v3, ":"

    .line 1324
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    :cond_33
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 1330
    :cond_3b
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->parentPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->curWorkUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->workId:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->goRecordSound(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initCollectionDownloadListener()V
    .registers 3

    .line 802
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$8;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->setListener(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;)V

    return-void
.end method

.method private initHeader()V
    .registers 4

    .line 657
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 658
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 659
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 660
    sget-boolean v0, Lcom/codemao/creativestore/config/ConfigPageLoad;->midiInput:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1f

    .line 661
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_1f
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isError()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError()Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_61

    .line 665
    :cond_34
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isHasItemDownloading()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_55

    .line 668
    :cond_49
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 666
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 664
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6c
    return-void
.end method

.method private initLeftRv()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 413
    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->leftBeans:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    .line 414
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 416
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$4;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setOnItemClickListener(Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;)V

    .line 428
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setSelection(I)V

    return-void
.end method

.method private initRightRv()V
    .registers 12

    .line 434
    new-instance v0, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;

    iget v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_d

    iget-boolean v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isPad:Z

    if-nez v1, :cond_d

    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    const/4 v1, 0x5

    :goto_e
    invoke-direct {v0, p0, v1}, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 435
    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$5;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$5;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 447
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/codemao/creativecenter/activity/MaterialActivity$6;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$6;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 493
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 494
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 496
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/codemao/creativecenter/customview/GridItemDecoration;

    iget-boolean v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isPad:Z

    if-eqz v3, :cond_47

    const/4 v3, 0x3

    goto :goto_48

    :cond_47
    const/4 v3, 0x2

    :goto_48
    invoke-direct {v2, p0, v3}, Lcom/codemao/creativecenter/customview/GridItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 497
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 498
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 499
    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    iget v8, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v9, v3, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->workId:Ljava/lang/String;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/databinding/ObservableField;Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;ILandroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    .line 501
    iget-boolean v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    if-eqz v3, :cond_88

    iget-boolean v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->hasAvailableMemory:Z

    if-eqz v3, :cond_88

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->setCanRecordVoice(Z)V

    .line 503
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static jumpActorMaterial(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "actor"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    .line 193
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 194
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workUid"

    .line 195
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bgPath"

    .line 196
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "materialsUrl"

    .line 197
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isLandscapeStage"

    .line 198
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    sget p1, Lcom/codemao/creativecenter/R$anim;->creative_from_bottom:I

    sget p2, Lcom/codemao/creativecenter/R$anim;->creative_material_exit_top:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static jumpBackgroundMaterial(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "background"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "workId"

    .line 219
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "workUid"

    .line 220
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "name"

    .line 221
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "materialsUrl"

    .line 222
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isLandscapeStage"

    .line 223
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    sget p1, Lcom/codemao/creativecenter/R$anim;->creative_from_bottom:I

    sget p2, Lcom/codemao/creativecenter/R$anim;->creative_material_exit_top:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static jumpSoundMaterial(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sound"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "workUid"

    .line 231
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "workId"

    .line 232
    invoke-virtual {v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "parentPath"

    .line 233
    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "exitVoiceName"

    .line 234
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "exitRecordName"

    .line 235
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "materialsUrl"

    .line 236
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isLandscapeStage"

    .line 237
    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 239
    sget p1, Lcom/codemao/creativecenter/R$anim;->creative_from_bottom:I

    sget p2, Lcom/codemao/creativecenter/R$anim;->creative_material_exit_top:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static jumpStyleMaterial(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "style"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 207
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workUid"

    .line 208
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bgPath"

    .line 209
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "materialsUrl"

    .line 210
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isLandscapeStage"

    .line 211
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    sget p1, Lcom/codemao/creativecenter/R$anim;->creative_from_bottom:I

    sget p2, Lcom/codemao/creativecenter/R$anim;->creative_material_exit_top:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private synthetic lambda$convertActorData$1(Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 3

    .line 943
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialBottomInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 945
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 946
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setSelection(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$convertBackGroundData$2(Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 3

    .line 1000
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialBottomInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1002
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1003
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialLeftAdapter:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setSelection(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$copyAndImportAudio$3(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V
    .registers 4

    .line 1581
    iget-object p2, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioName:Ljava/lang/String;

    iget-object v0, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->uuid:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->extName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->createUploadBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;

    move-result-object p1

    .line 1582
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1583
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string v0, "actorBeans"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 1584
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1585
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;)V
    .registers 4

    .line 317
    iget-boolean v0, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->hasNotch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_2d

    .line 319
    iget-object v0, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 320
    iget-object p1, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 321
    sput p1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2d
    return-void
.end method

.method private markDatas()V
    .registers 7

    .line 250
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_43

    .line 251
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-eq v0, v4, :cond_35

    if-eq v0, v3, :cond_35

    if-eq v0, v2, :cond_26

    if-eq v0, v1, :cond_17

    goto :goto_43

    .line 260
    :cond_17
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getAudioConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->readMaterialsItemInfo(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    goto :goto_43

    .line 253
    :cond_26
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getSceneConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->readMaterialsItemInfo(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    goto :goto_43

    .line 257
    :cond_35
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getActorConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->readMaterialsItemInfo(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsItemInfo:Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    .line 264
    :cond_43
    :goto_43
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-eq v0, v4, :cond_77

    if-eq v0, v3, :cond_77

    if-eq v0, v2, :cond_52

    if-eq v0, v1, :cond_4e

    goto :goto_9b

    .line 292
    :cond_4e
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->convertSoundData()V

    goto :goto_9b

    .line 267
    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->webviewBackgroundStyleList:Ljava/util/List;

    if-nez v0, :cond_60

    .line 268
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->generalWebViewBackgroundStyle(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->webviewBackgroundStyleList:Ljava/util/List;

    .line 270
    :cond_60
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->webviewBackgroundStyleList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->convertBackGroundData(Ljava/util/List;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_66

    goto :goto_9b

    :catch_66
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_material_analyze_failed:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    goto :goto_9b

    .line 280
    :cond_77
    :try_start_77
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->webViewActorStyleList:Ljava/util/List;

    if-nez v0, :cond_85

    .line 281
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->generalWebViewActorStyle(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->webViewActorStyleList:Ljava/util/List;

    .line 283
    :cond_85
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->webViewActorStyleList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->convertActorData(Ljava/util/List;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8a} :catch_8b

    goto :goto_9b

    :catch_8b
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_material_analyze_failed:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    :goto_9b
    return-void
.end method

.method private notifyDownloadStatus(I)V
    .registers 5

    .line 871
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 872
    instance-of v2, v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    if-eqz v2, :cond_6

    .line 873
    check-cast v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    .line 876
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getCollectionHasNotDownloadCount()I

    move-result v0

    const/4 v2, 0x3

    if-lez v0, :cond_2b

    .line 878
    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownloadItemNum(I)V

    .line 880
    invoke-virtual {v1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->getDownlaodStatus()I

    move-result v0

    if-ne v0, v2, :cond_39

    const/4 p1, 0x3

    goto :goto_39

    :cond_2b
    const/4 p1, 0x0

    goto :goto_39

    :cond_2d
    if-nez p1, :cond_39

    .line 887
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getCollectionHasNotDownloadCount()I

    move-result v2

    if-lez v2, :cond_39

    .line 889
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownloadItemNum(I)V

    const/4 p1, 0x4

    .line 894
    :cond_39
    :goto_39
    invoke-virtual {v1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->getDownlaodStatus()I

    move-result v0

    if-eq p1, v0, :cond_42

    .line 895
    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    :cond_42
    return-void
.end method

.method private requestCollectMaterialData(ILkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 674
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->isLogin()Z

    move-result v0

    if-nez v0, :cond_10

    .line 675
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 679
    :cond_10
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->initCollectionDownloadListener()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 683
    :goto_15
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 684
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 685
    instance-of v3, v2, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    if-eqz v3, :cond_2b

    .line 686
    move-object v0, v2

    check-cast v0, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    goto :goto_2e

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 692
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v1

    const-class v2, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;

    .line 693
    invoke-interface {v1}, Lcom/codemao/creativecenter/utils/bcm/api/MaterialService;->getCollectMaterialList()Lio/reactivex/Observable;

    move-result-object v1

    .line 694
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/activity/MaterialActivity$7;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/codemao/creativecenter/activity/MaterialActivity$7;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;ILcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;Lkotlin/jvm/functions/Function1;)V

    .line 695
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private showFirstThemeSuccess()V
    .registers 3

    .line 1883
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->isThemeSuccessShowed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1887
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->showThemeSuccess()V

    .line 1888
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1889
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeListPop:Lcom/codemao/creativecenter/pop/ThemeListPop;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1890
    :cond_1c
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->startDissmissCountDown()V

    :cond_1f
    return-void
.end method

.method private startBlackActivity(Z)V
    .registers 10

    .line 1141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bgPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1142
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    const-string v0, ".jpg"

    goto :goto_14

    :cond_12
    const-string v0, ".webp"

    .line 1144
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativestore/presenter/CreateUtils;->getUserMaterialsImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_a9

    .line 1147
    invoke-static {}, Lcom/codemao/creativestore/presenter/CreateUtils;->getUserMaterialsImagePath()Ljava/lang/String;

    move-result-object p1

    .line 1148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_42

    .line 1151
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1154
    :cond_42
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/16 v2, 0x4e21

    const/4 v3, 0x0

    if-ne v0, v1, :cond_79

    .line 1155
    invoke-static {}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->create()Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->showCamera(Z)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->single()Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setBgPath(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setPath(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->roleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setTitle(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setType(I)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->curWorkUid:Ljava/lang/String;

    .line 1156
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setWorkUid(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isLandscapeStage:Z

    .line 1157
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setLandscapeStage(Z)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    .line 1158
    invoke-virtual {p1, p0, v2}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->startToSketch(Landroid/app/Activity;I)V

    goto :goto_ca

    .line 1160
    :cond_79
    invoke-static {}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->create()Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->showCamera(Z)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->multi()Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setBgPath(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setPath(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->roleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setTitle(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setType(I)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->curWorkUid:Ljava/lang/String;

    .line 1161
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setWorkUid(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isLandscapeStage:Z

    .line 1162
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->setLandscapeStage(Z)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    move-result-object p1

    .line 1163
    invoke-virtual {p1, p0, v2}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->startToSketch(Landroid/app/Activity;I)V

    goto :goto_ca

    .line 1167
    :cond_a9
    iget p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_be

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b2

    goto :goto_be

    :cond_b2
    if-ne p1, v1, :cond_ca

    .line 1170
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isLandscapeStage:Z

    invoke-virtual {p1, p0, v5, v0}, Lcn/codemao/android/sketch/CodemaoSketch;->goCanvasBackgroundActivity(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_ca

    .line 1168
    :cond_be
    :goto_be
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v2

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->roleName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isLandscapeStage:Z

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcn/codemao/android/sketch/CodemaoSketch;->goCanvasActorActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method private startDissmissCountDown()V
    .registers 8

    .line 1895
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_12

    .line 1896
    new-instance v0, Lcom/codemao/creativecenter/activity/MaterialActivity$14;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1388

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/activity/MaterialActivity$14;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;JJ)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->countDownTimer:Landroid/os/CountDownTimer;

    goto :goto_15

    .line 1910
    :cond_12
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1912
    :goto_15
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateHeader()V
    .registers 4

    .line 1830
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1831
    instance-of v2, v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    if-eqz v2, :cond_6

    .line 1832
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isError()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_4c

    .line 1834
    :cond_29
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isHasItemDownloading()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_45

    .line 1837
    :cond_3e
    check-cast v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    goto :goto_52

    .line 1835
    :cond_45
    :goto_45
    check-cast v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    goto :goto_52

    .line 1833
    :cond_4c
    :goto_4c
    check-cast v1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    :cond_52
    :goto_52
    return-void
.end method

.method private updateIndex()V
    .registers 7

    .line 1797
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1798
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/16 v0, -0x3e7

    const/4 v1, 0x0

    .line 1800
    :goto_d
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a5

    .line 1801
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1802
    instance-of v3, v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz v3, :cond_a1

    .line 1803
    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getCategory_id()I

    move-result v2

    if-eq v0, v2, :cond_a1

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_3e

    .line 1807
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 1808
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 1812
    :goto_3f
    iget v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_76

    const/4 v4, 0x2

    if-ne v3, v4, :cond_48

    goto :goto_76

    :cond_48
    const/4 v4, 0x3

    if-ne v3, v4, :cond_a0

    .line 1816
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionBg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_a0

    .line 1813
    :cond_76
    :goto_76
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexSparseMap:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->indexRevertSparseMap:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->idPositionActor:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a5

    :cond_a0
    :goto_a0
    move v0, v2

    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :catch_a5
    :cond_a5
    return-void
.end method

.method private updateVersion()V
    .registers 3

    .line 1872
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeVersion:I

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getThemeVersion()I

    move-result v1

    if-le v0, v1, :cond_14

    .line 1873
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->setShowThemeNewVersion(Z)V

    .line 1874
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialBottomInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->setShowThemeNewVersion(Z)V

    goto :goto_1f

    .line 1876
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->setShowThemeNewVersion(Z)V

    .line 1877
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialBottomInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->setShowThemeNewVersion(Z)V

    :goto_1f
    return-void
.end method


# virtual methods
.method public clickAlubm()V
    .registers 13

    .line 1087
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->cancelCollectionManagerMode()V

    .line 1088
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    goto :goto_20

    :cond_f
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2d

    .line 1091
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v3, "背景素材库"

    const-string/jumbo v4, "背景-上传"

    invoke-virtual {v0, v3, v4, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2d

    .line 1089
    :cond_20
    :goto_20
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v3, "角色素材库"

    const-string/jumbo v4, "角色-上传"

    invoke-virtual {v0, v3, v4, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1093
    :cond_2d
    :goto_2d
    sget-object v5, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->permissions:[Ljava/lang/String;

    invoke-virtual {v5, p0, v0}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    const/16 v7, 0x6f

    .line 1094
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_open_album:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->permissions:[Ljava/lang/String;

    new-instance v11, Lcom/codemao/creativecenter/activity/MaterialActivity$9;

    invoke-direct {v11, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$9;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    const-string v9, "CREATE_TYPE_OPEN_XIANGCE"

    move-object v6, p0

    invoke-virtual/range {v5 .. v11}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionInOrigin(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    goto :goto_50

    .line 1112
    :cond_4d
    invoke-direct {p0, v2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->startBlackActivity(Z)V

    :goto_50
    return-void
.end method

.method public clickCanves()V
    .registers 5

    .line 1178
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->cancelCollectionManagerMode()V

    .line 1179
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    goto :goto_20

    :cond_f
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    .line 1182
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "背景素材库"

    const-string/jumbo v3, "背景-画板"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2d

    .line 1180
    :cond_20
    :goto_20
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "角色素材库"

    const-string/jumbo v3, "角色-画板"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 1184
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->startBlackActivity(Z)V

    return-void
.end method

.method public clickCollectDelete()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1280
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1281
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1282
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1286
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2d

    return-void

    .line 1290
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1292
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getId()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1294
    :cond_4f
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->deleteImages(Ljava/util/List;)V

    .line 1296
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1297
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1298
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_70

    .line 1300
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1301
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/BaseObservable;->notifyChange()V

    .line 1304
    :cond_70
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1305
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1306
    instance-of v2, v1, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;

    if-eqz v2, :cond_7e

    .line 1307
    check-cast v1, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->setShowEmpty(Z)V

    .line 1313
    :cond_92
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clickCollectManager(Z)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1259
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1260
    invoke-virtual {v1, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCollectDeleteAble(Z)V

    goto :goto_6

    :cond_16
    if-nez p1, :cond_1b

    .line 1263
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->cancelSelectCollectionImages()V

    .line 1265
    :cond_1b
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clickMidi()V
    .registers 5

    .line 1394
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    if-eqz v2, :cond_f

    const-string v2, "0"

    goto :goto_11

    :cond_f
    const-string v2, "1"

    :goto_11
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setLimitNumber(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "声音素材页"

    const-string/jumbo v3, "声音素材-MIDI"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1395
    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->hasAvailableMemory:Z

    if-nez v0, :cond_2c

    .line 1396
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_memory_reach_limit:I

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 1399
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1400
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->exitVoiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1401
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->exitVoiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    :cond_3e
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1403
    instance-of v3, v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz v3, :cond_44

    .line 1404
    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5f

    const-string v3, ":"

    .line 1406
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :cond_5f
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1411
    :cond_67
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v1

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->parentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/record/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getMidiMode()I

    move-result v3

    invoke-static {p0, v2, v0, v3, v1}, Lcom/codemao/midi/CMMidiHelper;->startCreateEditor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public clickRecorder()V
    .registers 5

    .line 1192
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    if-eqz v2, :cond_f

    const-string v2, "0"

    goto :goto_11

    :cond_f
    const-string v2, "1"

    :goto_11
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setLimitNumber(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "声音素材页"

    const-string/jumbo v3, "声音素材-录音"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1194
    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    if-nez v0, :cond_2c

    .line 1195
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_audios_reach_limit:I

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 1199
    :cond_2c
    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->hasAvailableMemory:Z

    if-nez v0, :cond_36

    .line 1200
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_memory_reach_limit:I

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 1204
    :cond_36
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->checkRecordPermisson()Z

    move-result v0

    if-nez v0, :cond_3d

    return-void

    .line 1207
    :cond_3d
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->goRecord()V

    return-void
.end method

.method public clickTheme()V
    .registers 3

    .line 1119
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->cancelCollectionManagerMode()V

    .line 1120
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeVersion:I

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putThemeVersion(I)V

    .line 1121
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->setShowThemeNewVersion(Z)V

    .line 1122
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialBottomInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->setShowThemeNewVersion(Z)V

    .line 1123
    new-instance v0, Lcom/codemao/creativecenter/pop/ThemeListPop;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$10;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$10;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/codemao/creativecenter/pop/ThemeListPop;-><init>(Lcom/codemao/creativecenter/base/BaseCreativeActivity;Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeListPop:Lcom/codemao/creativecenter/pop/ThemeListPop;

    .line 1132
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 1133
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 1134
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 1135
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeListPop:Lcom/codemao/creativecenter/pop/ThemeListPop;

    .line 1136
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public clickToDownloadCollection(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 12

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_76

    .line 1230
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1231
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 1232
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->notifyDownloadStatus(I)V

    .line 1234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1236
    new-instance v9, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    invoke-direct {v9, v8, v3, v3}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 1238
    :cond_51
    new-instance v7, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v5

    iget v9, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-ne v9, v1, :cond_65

    const/4 v9, 0x2

    goto :goto_66

    :cond_65
    const/4 v9, 0x1

    :goto_66
    invoke-direct {v7, v8, v5, v9, v4}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1239
    sget-object v4, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v4, v7}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->addMaterialImageData(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    const/4 v4, 0x0

    goto :goto_d

    :cond_70
    if-eqz v4, :cond_b4

    .line 1243
    invoke-direct {p0, v6}, Lcom/codemao/creativecenter/activity/MaterialActivity;->notifyDownloadStatus(I)V

    goto :goto_b4

    .line 1246
    :cond_76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_83
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1248
    new-instance v7, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    invoke-direct {v7, v6, v3, v3}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 1250
    :cond_98
    new-instance v3, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget v6, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-ne v6, v1, :cond_ab

    goto :goto_ac

    :cond_ab
    const/4 v0, 0x1

    :goto_ac
    invoke-direct {v3, v5, p1, v0, v4}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1251
    sget-object p1, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {p1, v3}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->addMaterialImageData(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public clickUpload()V
    .registers 2

    .line 1212
    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    if-nez v0, :cond_a

    .line 1213
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_upload_files_reach_limit:I

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 1216
    :cond_a
    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->hasAvailableMemory:Z

    if-nez v0, :cond_14

    .line 1217
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_memory_reach_limit:I

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 1220
    :cond_14
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->checkMusicFilePermission()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 1223
    :cond_1b
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->parentPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->goUploadSound(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public copyAndImportAudio(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 5

    .line 1564
    iget-object v0, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1565
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_format_error:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1568
    :cond_12
    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    if-nez v0, :cond_20

    .line 1569
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_over_max_record:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1572
    :cond_20
    iget-boolean v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->hasAvailableMemory:Z

    if-nez v0, :cond_2e

    .line 1573
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_memory_reach_limit:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1576
    :cond_2e
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3d

    .line 1577
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_tip:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1580
    :cond_3d
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->parentPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->moveFileToPath(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;)V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 1611
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1612
    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_exit_bottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 4

    .line 1619
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x1

    const-string/jumbo v2, "角色素材页"

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    goto :goto_19

    :cond_12
    const-string/jumbo v2, "声音素材页"

    goto :goto_19

    :cond_16
    const-string/jumbo v2, "背景素材页"

    :cond_19
    :goto_19
    return-object v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .line 1502
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x18c

    const/4 v1, -0x1

    if-eq p2, v1, :cond_20

    if-ne p1, v0, :cond_18

    const/16 p1, 0x7b

    if-ne p2, p1, :cond_18

    const/4 p1, 0x1

    const-string p2, "mode"

    .line 1506
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1507
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putMidiMode(I)V

    .line 1510
    :cond_18
    sget-boolean p1, Lcom/codemao/creativestore/config/ConfigPageLoad;->imageSourcesInput:Z

    if-nez p1, :cond_1f

    .line 1511
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    :cond_1f
    return-void

    :cond_20
    const/16 p2, 0x1e61

    if-eq p1, p2, :cond_85

    const/16 p2, 0x4e21

    if-ne p1, p2, :cond_29

    goto :goto_85

    :cond_29
    const/16 p2, 0x1996

    const-string v2, "actorBeans"

    if-eq p1, p2, :cond_33

    const/16 p2, 0x1998

    if-ne p1, p2, :cond_4f

    :cond_33
    const-string p2, "record_data"

    .line 1525
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1526
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1527
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1528
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1529
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    :cond_4f
    if-ne p1, v0, :cond_ad

    const-string p1, "midi_data"

    .line 1532
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/bean/MidiMaterialBean;

    .line 1533
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiMaterialBean;->getMode()I

    move-result p2

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putMidiMode(I)V

    .line 1534
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1535
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiMaterialBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiMaterialBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiMaterialBean;->getExt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->parseFromMidiBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1536
    invoke-virtual {p0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1537
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    goto :goto_ad

    :cond_85
    :goto_85
    if-eqz p3, :cond_ad

    .line 1517
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "resultInfo"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/model/ResultInfo;

    if-eqz p1, :cond_ad

    .line 1519
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->curWorkUid:Ljava/lang/String;

    new-instance v1, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

    iget v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    invoke-direct {v1, p1, v2}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;-><init>(Lcn/codemao/android/sketch/model/ResultInfo;I)V

    invoke-direct {p3, v0, v1}, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1520
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public onBaseMaterialDownloadError(Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1735
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateHeader()V

    return-void
.end method

.method public onBaseMaterialDownloadSuccess(Lcom/codemao/creativecenter/event/BaseMaterialDownloadSuccessEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1724
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateHeader()V

    .line 1725
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->addBaseCloudMaterial()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    .line 1442
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1443
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    const-string/jumbo v1, "声音素材页"

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne p1, v0, :cond_21

    .line 1444
    iget p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-eq p1, v2, :cond_12

    goto :goto_1c

    .line 1446
    :cond_12
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "声音素材-取消"

    invoke-virtual {p1, v1, v0, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1449
    :goto_1c
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    goto/16 :goto_10a

    .line 1450
    :cond_21
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_add:I

    const-string/jumbo v4, "背景素材库"

    const-string/jumbo v5, "角色素材库"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne p1, v0, :cond_c6

    .line 1451
    iget p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-eq p1, v9, :cond_7e

    if-eq p1, v6, :cond_7e

    if-eq p1, v8, :cond_73

    if-eq p1, v2, :cond_3a

    goto :goto_88

    .line 1462
    :cond_3a
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v3}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setLimitNumber(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "声音素材-添加"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_88

    .line 1458
    :cond_73
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "背景-添加"

    invoke-virtual {p1, v4, v0, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_88

    .line 1454
    :cond_7e
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "角色-添加"

    invoke-virtual {p1, v5, v0, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1470
    :goto_88
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_c2

    .line 1472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9e

    goto :goto_c2

    .line 1476
    :cond_9e
    :goto_9e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_b0

    .line 1477
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_9e

    .line 1480
    :cond_b0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "actorBeans"

    .line 1481
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 1482
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1483
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    goto :goto_10a

    .line 1473
    :cond_c2
    :goto_c2
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    return-void

    .line 1484
    :cond_c6
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_num:I

    if-ne p1, v0, :cond_10a

    .line 1485
    iget p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-eq p1, v9, :cond_de

    if-ne p1, v6, :cond_d1

    goto :goto_de

    :cond_d1
    if-ne p1, v8, :cond_e8

    .line 1488
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "背景-选择背包"

    invoke-virtual {p1, v4, v0, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_e8

    .line 1486
    :cond_de
    :goto_de
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "角色-选择背包"

    invoke-virtual {p1, v5, v0, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1490
    :cond_e8
    :goto_e8
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Right:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    .line 1492
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupPosition(Lcom/nemo/commonui/xpopup/enums/PopupPosition;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 1493
    invoke-virtual {p1, v7}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->hasStatusBarShadow(Z)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    iget v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    if-ne v2, v8, :cond_100

    const/4 v7, 0x1

    :cond_100
    invoke-direct {v0, p0, v1, v7}, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;-><init>(Landroid/content/Context;Landroidx/databinding/ObservableField;Z)V

    .line 1494
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 1495
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_10a
    :goto_10a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 300
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isLandscapeStage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isLandscapeStage:Z

    .line 304
    new-instance p1, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    .line 305
    new-instance p1, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-direct {p1, v1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialBottomInfo:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    .line 306
    invoke-static {p0, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 307
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getThemeVersion()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->themeVersion:I

    .line 308
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "materialsUrl"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialsUrl:Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "workId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->workId:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "workUid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->curWorkUid:Ljava/lang/String;

    .line 315
    invoke-static {}, Lcom/codemao/creativecenter/utils/NotchScreenManager;->getInstance()Lcom/codemao/creativecenter/utils/NotchScreenManager;

    move-result-object p1

    new-instance v2, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {p1, p0, v2}, Lcom/codemao/creativecenter/utils/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;)V

    .line 328
    sget p1, Lcom/codemao/creativecenter/R$layout;->creative_activity_material:I

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    .line 329
    iget-boolean v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isPad:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->roleName:Ljava/lang/String;

    .line 332
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/codemao/creativecenter/activity/MaterialActivity$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$1;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivSuccess:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/creativecenter/activity/MaterialActivity$2;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$2;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_185

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_1f8

    goto :goto_d9

    :sswitch_ae
    const-string v3, "style"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    goto :goto_d9

    :cond_b7
    const/4 v2, 0x3

    goto :goto_d9

    :sswitch_b9
    const-string v3, "sound"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c2

    goto :goto_d9

    :cond_c2
    const/4 v2, 0x2

    goto :goto_d9

    :sswitch_c4
    const-string v3, "actor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cd

    goto :goto_d9

    :cond_cd
    const/4 v2, 0x1

    goto :goto_d9

    :sswitch_cf
    const-string v3, "background"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d8

    goto :goto_d9

    :cond_d8
    const/4 v2, 0x0

    :goto_d9
    packed-switch v2, :pswitch_data_20a

    goto/16 :goto_185

    .line 352
    :pswitch_de  #0x3
    iput v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    .line 353
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_selected_sprite:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_185

    .line 362
    :pswitch_f3  #0x2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "parentPath"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->parentPath:Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "exitVoiceName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->exitVoiceName:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "exitRecordName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->exitRecordName:Ljava/lang/String;

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12f

    .line 366
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->exitRecordName:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 367
    array-length p1, p1

    const/16 v2, 0x1e

    if-ge p1, v2, :cond_12c

    const/4 p1, 0x1

    goto :goto_12d

    :cond_12c
    const/4 p1, 0x0

    :goto_12d
    iput-boolean p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->canRecord:Z

    .line 369
    :cond_12f
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    sget v2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_rectangle_light_purple:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 370
    invoke-static {}, Lcom/codemao/creativecenter/utils/CommonUtils;->getAvailableInternalMemorySize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_147

    const/4 v1, 0x1

    .line 371
    :cond_147
    iput-boolean v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->hasAvailableMemory:Z

    const/4 p1, 0x7

    .line 372
    iput p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    .line 373
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_choose_audio:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_185

    .line 347
    :pswitch_15e  #0x1
    iput v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    .line 348
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_selected_sprite:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_185

    .line 357
    :pswitch_172  #0x0
    iput v4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    .line 358
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_selected_backgroud:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_185
    :goto_185
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->setType(Ljava/lang/Integer;)V

    .line 380
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->initLeftRv()V

    .line 381
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->initRightRv()V

    .line 383
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->markDatas()V

    .line 385
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->selectDatas:Landroidx/databinding/ObservableField;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$3;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    invoke-virtual {p1, v1}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 392
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->dataBinding:Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->isPad:Z

    if-eqz v1, :cond_1c3

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_material_package_pad:I

    goto :goto_1c5

    :cond_1c3
    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_material_pakage:I

    :goto_1c5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 396
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 397
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->getThemeVersion()V

    .line 399
    sget-boolean p1, Lcom/codemao/creativestore/config/ConfigPageLoad;->imageSourcesInput:Z

    if-nez p1, :cond_1d9

    .line 400
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->clickCanves()V

    .line 403
    :cond_1d9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_1e7

    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    .line 404
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->permissions:[Ljava/lang/String;

    .line 407
    :cond_1e7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v2, 0xe89d1

    invoke-direct {v1, v2, v0}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_1f8
    .sparse-switch
        -0x4f67aad2 -> :sswitch_cf
        0x585a9f5 -> :sswitch_c4
        0x688c90f -> :sswitch_b9
        0x68b1db1 -> :sswitch_ae
    .end sparse-switch

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_172  #00000000
        :pswitch_15e  #00000001
        :pswitch_f3  #00000002
        :pswitch_de  #00000003
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 5

    .line 1599
    invoke-super {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onDestroy()V

    .line 1600
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v2, 0xe89d1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1601
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->countDownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1602
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1603
    iput-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 1605
    :cond_1d
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->setListener(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;)V

    .line 1606
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetImagePathResult(Lcom/codemao/creativecenter/event/UploadImgEventWrapper;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1547
    :cond_3
    iget-object v0, p1, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p1, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;->workUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->curWorkUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_42

    .line 1550
    :cond_16
    iget-object p1, p1, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;->result:Lcom/codemao/creativecenter/event/UploadImgEvent;

    if-eqz p1, :cond_42

    .line 1552
    invoke-virtual {p1}, Lcom/codemao/creativecenter/event/UploadImgEvent;->getActorBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/codemao/creativecenter/event/UploadImgEvent;->getActorBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_42

    .line 1555
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1556
    invoke-virtual {p1}, Lcom/codemao/creativecenter/event/UploadImgEvent;->getActorBeans()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string v1, "actorBeans"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 1557
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1558
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->finish()V

    :cond_42
    :goto_42
    return-void
.end method

.method public onNewThemeActorAdd(Lcom/codemao/creativecenter/event/ThemeActorMaterialUpdateEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1637
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateHeader()V

    .line 1638
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 1639
    :cond_b
    iget-object p1, p1, Lcom/codemao/creativecenter/event/ThemeActorMaterialUpdateEvent;->materialActorSubListBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->addNewThemeMaterial(Ljava/util/List;)V

    :cond_10
    return-void
.end method

.method public onNewThemeBgAdd(Lcom/codemao/creativecenter/event/ThemeBgMaterialUpdateEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1646
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateHeader()V

    .line 1647
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 1648
    iget-object p1, p1, Lcom/codemao/creativecenter/event/ThemeBgMaterialUpdateEvent;->materialActorSubListBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->addNewThemeMaterial(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1418
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_1a

    .line 1420
    array-length p1, p3

    if-lez p1, :cond_14

    aget p1, p3, p2

    if-nez p1, :cond_14

    const/4 p1, 0x1

    .line 1421
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->startBlackActivity(Z)V

    goto :goto_45

    .line 1423
    :cond_14
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_open_album:I

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    goto :goto_45

    .line 1425
    :cond_1a
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->REQUEST_AUDIO:I

    if-ne p1, v0, :cond_2f

    .line 1426
    array-length p1, p3

    if-lez p1, :cond_29

    aget p1, p3, p2

    if-nez p1, :cond_29

    .line 1427
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->goRecord()V

    goto :goto_45

    .line 1429
    :cond_29
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_record:I

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    goto :goto_45

    .line 1431
    :cond_2f
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->REQUEST_STORAGE:I

    if-ne p1, v0, :cond_45

    .line 1432
    array-length p1, p3

    if-lez p1, :cond_40

    aget p1, p3, p2

    if-nez p1, :cond_40

    .line 1433
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->parentPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->goUploadSound(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_45

    .line 1435
    :cond_40
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_permission_upload:I

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    :cond_45
    :goto_45
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .line 244
    invoke-super {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onRestart()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-static {p0, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 246
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 1591
    invoke-super {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onStop()V

    .line 1592
    iget v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->currentType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    .line 1593
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->stopMusicWhenDestroy()V

    :cond_d
    return-void
.end method

.method public onThemeDownloadStart(Lcom/codemao/creativecenter/event/ThemeMaterialDownloadStartEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1730
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateHeader()V

    return-void
.end method

.method public onThemeMaterialDownloadError(Lcom/codemao/creativecenter/event/ThemeMaterialDownloadErrorEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1740
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->updateHeader()V

    return-void
.end method

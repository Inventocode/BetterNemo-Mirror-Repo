.class public final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;
.super Lcom/ljwx/basefragment/BaseMVVMPadFragment;
.source "MineNemoDraftsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
        "Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;",
        "Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;",
        "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineNemoDraftsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoDraftsFragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 DelayTaskExtensions.kt\ncom/ljwx/baseapp/extensions/DelayTaskExtensionsKt\n*L\n1#1,1581:1\n1860#2,3:1582\n1549#2:1585\n1620#2,3:1586\n1549#2:1589\n1620#2,3:1590\n731#2,9:1593\n731#2,9:1604\n1860#2,3:1615\n1860#2,3:1618\n1860#2,3:1621\n1860#2,3:1624\n1860#2,3:1627\n37#3,2:1602\n37#3,2:1613\n23#4,7:1630\n*S KotlinDebug\n*F\n+ 1 MineNemoDraftsFragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment\n*L\n911#1:1582,3\n1160#1:1585\n1160#1:1586,3\n1244#1:1589\n1244#1:1590,3\n1253#1:1593,9\n1255#1:1604,9\n1388#1:1615,3\n1410#1:1618,3\n1420#1:1621,3\n1432#1:1624,3\n1460#1:1627,3\n1254#1:1602,2\n1256#1:1613,2\n1534#1:1630,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;


# instance fields
.field private final DEFAULT_SPAN_NUM:I

.field private final PAD_SPAN_NUM:I

.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterDrafts$delegate:Lkotlin/Lazy;

.field private curPublishData:Lcom/codemao/nemo/bean/NemoWorkListItem;

.field private dataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

.field private mSpanNum:I

.field private final nemoCompat$delegate:Lkotlin/Lazy;

.field private final recyclerView$delegate:Lkotlin/Lazy;

.field private final renamePop$delegate:Lkotlin/Lazy;

.field private final renameXPop$delegate:Lkotlin/Lazy;

.field private final rlGoBind$delegate:Lkotlin/Lazy;

.field private final rootHolder$delegate:Lkotlin/Lazy;

.field private searchKey:Ljava/lang/String;

.field private final searchMode$delegate:Lkotlin/Lazy;

.field private final searchPublished$delegate:Lkotlin/Lazy;

.field private shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;


# direct methods
.method public static synthetic $r8$lambda$6RP6pEhZ8s5RZX_a1w1ZVAsga9U(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->checkBindInfo$lambda$13$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9NrGSLK6HW1QYJA8GV5Z5EQuMnI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onUpload$lambda$11$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FkHBA-Hw2a5eZjSGTjhKIBreIn4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->commonStep3ObserveData$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_POx9ROPXX2p4g5HGy4YVrOrxc(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PTDyPjyK0CCCyjL9Hw4OBy1drGo(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onCancelPublish$lambda$8(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWFouwdj-yCFwBLcDtg21Lc0pEw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qt8HhTaaa6qTFCjikZ_4tdLzDQs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->checkMiaoCode$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zn6Tj1BwG6og23eeuU06b7FjGrc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->generateMiaoCode$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCeVrvwle79zimwV8IJt13RiGAo(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->updateBindStatus$lambda$29(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXxOWMp4HOnS6TtosulwibrHP3w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->commonStep3ObserveData$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qXivdJLLN-Y_6XmTcLIvY_H50_Q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onCancelPublish$lambda$8$lambda$7$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$raAd1nCuDLDb1mD8a0UKXzNs0Yg(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showShareMiaoCodeDialog$lambda$15(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vicspA99UMg9OqOgDEvI864KJ4c(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->generate$lambda$16(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xuw9HLEjk8wzP859ZXrTmPAWNN4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->commonStep3ObserveData$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->Companion:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d0155

    .line 102
    invoke-direct {p0, v0, v0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;-><init>(II)V

    const/4 v0, 0x2

    .line 118
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->PAD_SPAN_NUM:I

    const/4 v0, 0x1

    .line 119
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->DEFAULT_SPAN_NUM:I

    .line 120
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mSpanNum:I

    .line 122
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$recyclerView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$recyclerView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->recyclerView$delegate:Lkotlin/Lazy;

    .line 123
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$rlGoBind$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$rlGoBind$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->rlGoBind$delegate:Lkotlin/Lazy;

    .line 125
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$rootHolder$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$rootHolder$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->rootHolder$delegate:Lkotlin/Lazy;

    .line 129
    sget-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->adapterDrafts$delegate:Lkotlin/Lazy;

    .line 136
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->renamePop$delegate:Lkotlin/Lazy;

    .line 141
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renameXPop$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renameXPop$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->renameXPop$delegate:Lkotlin/Lazy;

    .line 151
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$nemoCompat$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$nemoCompat$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->nemoCompat$delegate:Lkotlin/Lazy;

    .line 153
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$searchMode$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$searchMode$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchMode$delegate:Lkotlin/Lazy;

    .line 154
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$searchPublished$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$searchPublished$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchPublished$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$checkBindInfo(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->checkBindInfo(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    return-void
.end method

.method public static final synthetic access$countTimeOut(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->countTimeOut(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$createCancelPublishEvents(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;J)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->createCancelPublishEvents(J)V

    return-void
.end method

.method public static final synthetic access$createMiaoCode(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->createMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method public static final synthetic access$deleteItemFromCoverPath(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Ljava/lang/String;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->deleteItemFromCoverPath(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$errorCauseCanceled(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->errorCauseCanceled(Lcom/codemao/nemo/bean/NemoWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$executeUploadWork(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->executeUploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$generateMiaoCode(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public static final synthetic access$getAdapterDrafts(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurPublishData$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/codemao/nemo/bean/NemoWorkListItem;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->curPublishData:Lcom/codemao/nemo/bean/NemoWorkListItem;

    return-object p0
.end method

.method public static final synthetic access$getDEFAULT_SPAN_NUM$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->DEFAULT_SPAN_NUM:I

    return p0
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;
    .registers 1

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;
    .registers 1

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;

    return-object p0
.end method

.method public static final synthetic access$getMGenerateMiaoCodeDialog$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    return-object p0
.end method

.method public static final synthetic access$getMSpanNum$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mSpanNum:I

    return p0
.end method

.method public static final synthetic access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;
    .registers 1

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRenamePop(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSearchKey$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSearchMode(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Z
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Z
    .registers 1

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->getStateLoadingDataSucceeded()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$goPublishActivity(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->goPublishActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public static final synthetic access$initChildRecycler(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 4

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    return-void
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Z
    .registers 1

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPositionUpdateOrRefresh(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;)I
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->isPositionUpdateOrRefresh(Lcom/codemao/nemo/bean/NemoWorkListItem;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$listScrollPosition(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;I)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->listScrollPosition(I)V

    return-void
.end method

.method public static final synthetic access$onDownloadCancel(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onDownloadCancel(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    return-void
.end method

.method public static final synthetic access$onDownloadContinue(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onDownloadContinue(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    return-void
.end method

.method public static final synthetic access$onEnter(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onEnter(Lcom/codemao/nemo/bean/NemoWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$onRename(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Ljava/lang/String;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onRename(Lcom/codemao/nemo/bean/NemoWorkListItem;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$postUploadBcmEvent(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->postUploadBcmEvent(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method public static final synthetic access$resetAllMenu(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->resetAllMenu()V

    return-void
.end method

.method public static final synthetic access$resetAllMenuAndScrollTop(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->resetAllMenuAndScrollTop()V

    return-void
.end method

.method public static final synthetic access$setCurPublishData$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->curPublishData:Lcom/codemao/nemo/bean/NemoWorkListItem;

    return-void
.end method

.method public static final synthetic access$setSearchKey$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showMenuView(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;IZZ)V
    .registers 5

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showMenuView(Lcom/codemao/nemo/bean/NemoWorkListItem;IZZ)V

    return-void
.end method

.method public static final synthetic access$showRenameDialog(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showRenameDialog(Lcom/codemao/nemo/bean/NemoWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$uploadError(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Ljava/lang/String;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->uploadError(Lcom/codemao/nemo/bean/NemoWorkListItem;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$uploadWork(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->uploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    return-void
.end method

.method public static final synthetic access$workUploadFail(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->workUploadFail()V

    return-void
.end method

.method private final checkBindInfo(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 6

    .line 761
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 762
    sget-object v1, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->checkPublish(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1d
    return-void
.end method

.method private static final checkBindInfo$lambda$13$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final checkMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 6

    .line 971
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 972
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 973
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    const-string v2, "data.work_id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_1f
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    if-eqz v1, :cond_2b

    const-string v2, "data.parent_id"

    .line 976
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_2b
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_4d

    .line 979
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->checkWorks(Ljava/util/Set;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_50

    .line 991
    :cond_4d
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->createMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :goto_50
    return-void
.end method

.method private static final checkMiaoCode$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final countTimeOut(Lkotlin/jvm/functions/Function0;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 882
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$countTimeOut$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$countTimeOut$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final createCancelPublishEvents(J)V
    .registers 4

    .line 896
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;-><init>()V

    .line 897
    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setId(J)V

    .line 898
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCancelPublishEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private final createMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 9

    .line 996
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$createMiaoCode$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, p2, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$createMiaoCode$1;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final deleteItemFromCoverPath(Ljava/lang/String;)V
    .registers 6

    .line 596
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getPositionByPath(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_65

    .line 597
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_15

    goto :goto_65

    .line 600
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "adapterDrafts.currentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 601
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 603
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 604
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, -0x1

    goto :goto_3c

    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 605
    :goto_3c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/event/MineTabEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 606
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 607
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    .line 609
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .line 607
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_6c

    .line 598
    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 612
    :goto_6c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "删除成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final errorCauseCanceled(Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 4

    .line 875
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    const/4 v1, 0x1

    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 876
    :goto_a
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_14

    :cond_11
    const/4 v1, 0x0

    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 877
    :goto_14
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->isPositionUpdateOrRefresh(Lcom/codemao/nemo/bean/NemoWorkListItem;)I

    .line 878
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "该作品已取消发布了哦～"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final executeUploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 825
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    .line 826
    :cond_7
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v6

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$executeUploadWork$1;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$executeUploadWork$1;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lkotlin/jvm/functions/Function1;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final generate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 7

    .line 956
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 957
    new-instance v0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 958
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_26

    :cond_1b
    if-eqz v0, :cond_26

    .line 960
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 961
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 963
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    if-eqz v0, :cond_32

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeErrorCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;)V

    .line 967
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->checkMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method private static final generate$lambda$16(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$createData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 965
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->generate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method private final generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 5

    .line 1023
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;

    .line 1024
    new-instance v0, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;-><init>()V

    .line 1025
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setBcm_version(Ljava/lang/String;)V

    .line 1026
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setApp_version(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setName(Ljava/lang/String;)V

    const-string v1, "android"

    .line 1028
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setOs(Ljava/lang/String;)V

    .line 1029
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setWork_id(Ljava/lang/String;)V

    .line 1030
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setEquipment(Ljava/lang/String;)V

    .line 1031
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setWork_url(Ljava/lang/String;)V

    .line 1032
    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setPreview(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$generateMiaoCode$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$generateMiaoCode$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final generateMiaoCode$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->adapterDrafts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    return-object v0
.end method

.method private final getNemoCompat()Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->nemoCompat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    return-object v0
.end method

.method private final getPositionByPath(Ljava/lang/String;)I
    .registers 9

    .line 1410
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "adapterDrafts.currentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_24

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1411
    :cond_24
    instance-of v5, v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz v5, :cond_4f

    check-cast v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_37

    iget-boolean v5, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-ne v5, v6, :cond_37

    const/4 v5, 0x1

    goto :goto_38

    :cond_37
    const/4 v5, 0x0

    :goto_38
    if-nez v5, :cond_4f

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-object v3, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    if-eqz v3, :cond_4b

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v6, 0x0

    :goto_4c
    if-eqz v6, :cond_4f

    return v2

    :cond_4f
    move v2, v4

    goto :goto_13

    :cond_51
    const/4 p1, -0x1

    return p1
.end method

.method private final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->recyclerView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->renamePop$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    return-object v0
.end method

.method private final getRenameXPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->renameXPop$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object v0
.end method

.method private final getRlGoBind()Landroid/widget/RelativeLayout;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->rlGoBind$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private final getRootHolder()Landroid/view/View;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->rootHolder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getSearchMode()Z
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchMode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getSearchPublished()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchPublished$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final goPublishActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "我的-点击发布草稿箱作品"

    .line 927
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 928
    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    const-string v1, "data.work_id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 929
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 930
    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const-string v4, "defaultImagePath"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    const-string v4, "des"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string v3, "imagePath"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 934
    invoke-virtual {v2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "type"

    .line 935
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 14

    .line 371
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 370
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 372
    new-instance v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    const-class v4, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const v5, 0x7f0d01d8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;-><init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncDifferConfig;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 376
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initChildRecycler$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initChildRecycler$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    .line 387
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 388
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchPublished()Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v2, 0x1

    :cond_35
    invoke-virtual {p2, v2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getMenus(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private final initDraftsRecycler()V
    .registers 4

    .line 301
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemBind(Lkotlin/jvm/functions/Function2;)V

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 325
    fill-array-data v1, :array_3c

    .line 324
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V

    .line 360
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchPublished()Z

    move-result v1

    if-eqz v1, :cond_3b

    const v1, 0x7f0d025e

    .line 361
    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreLoadingView(I)V

    const v1, 0x7f0d025d

    .line 362
    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreCompleteView(I)V

    .line 363
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$3;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnLoadMoreListener(Lkotlin/jvm/functions/Function0;)V

    :cond_3b
    return-void

    :array_3c
    .array-data 4
        0x7f0a052b
        0x7f0a016d
        0x7f0a05d5
        0x7f0a032e
        0x7f0a09b7
        0x7f0a09b3
        0x7f0a09b4
        0x7f0a01f2
        0x7f0a01f1
    .end array-data
.end method

.method private final isPositionUpdateOrRefresh(Lcom/codemao/nemo/bean/NemoWorkListItem;)I
    .registers 5

    .line 1396
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_e

    const-string v0, ""

    :cond_e
    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getPositionByPath(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_18

    .line 1398
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->refreshViewOnRefresh()V

    goto :goto_3a

    .line 1400
    :cond_18
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    const-string v2, "adapterDrafts.currentList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 1401
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1403
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 1404
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_3a
    return v0
.end method

.method private final listScrollPosition(I)V
    .registers 11

    .line 23
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v8, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$listScrollPosition$$inlined$delayRun$1;

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    move-object v2, v8

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$listScrollPosition$$inlined$delayRun$1;-><init>(JLkotlin/coroutines/Continuation;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;I)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final onCancelPublish$lambda$8(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V
    .registers 7

    const-string p3, "$dialog"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$data"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    .line 521
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p0

    const/4 p3, 0x0

    if-eqz p0, :cond_1c

    iget-object p0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    move-object p0, p3

    :goto_1d
    const/4 v0, 0x1

    if-eqz p0, :cond_29

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    if-eqz p0, :cond_2d

    return-void

    .line 524
    :cond_2d
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p0

    if-eqz p0, :cond_5e

    iget-object p0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    if-eqz p0, :cond_5e

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0, p3}, Lcom/ljwx/baseapp/extensions/StringKt;->toLongSafe$default(Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v0

    const-string/jumbo p0, "正在取消..."

    .line 525
    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showLoading(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->cancelPublish(J)Landroidx/lifecycle/LiveData;

    move-result-object p0

    .line 527
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCancelPublish$1$1$1;

    invoke-direct {v2, p2, v0, v1, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCancelPublish$1$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;JLcom/codemao/nemo/bean/NemoWorkListItem;)V

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda10;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p3, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_5e
    return-void
.end method

.method private static final onCancelPublish$lambda$8$lambda$7$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final onDownloadCancel(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 11

    .line 679
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const/4 v0, 0x0

    if-eqz v1, :cond_1e

    .line 680
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v1, v0

    :goto_1b
    invoke-static {v1}, Lcom/codemao/nemo/util/CallUtil;->cancelDownloadById(Ljava/lang/String;)V

    .line 682
    :cond_1e
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onDownloadCancel$1;

    invoke-direct {v5, p1, p0, p2, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onDownloadCancel$1;-><init>(Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;ILkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final onDownloadContinue(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 10

    .line 649
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    return-void

    .line 652
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 653
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 656
    :cond_1f
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_2e

    .line 657
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1202e8

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    :cond_2e
    const/4 v0, 0x1

    .line 660
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 661
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onDownloadContinue$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onDownloadContinue$1;-><init>(Lcom/codemao/nemo/bean/NemoWorkListItem;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final onEnter(Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 9

    .line 409
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->resetAllMenu()V

    .line 410
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchPublished()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_24

    :cond_22
    const-wide/16 v2, -0x1

    .line 414
    :goto_24
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    move-object v4, p1

    const-string/jumbo v5, "我的"

    const-string v6, ""

    .line 411
    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 419
    :cond_38
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getNemoCompat()Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    move-result-object v0

    .line 420
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    .line 421
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    .line 419
    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->goCreatePage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/util/List;)V

    :goto_4b
    return-void
.end method

.method private final onRename(Lcom/codemao/nemo/bean/NemoWorkListItem;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_a

    .line 695
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRenameXPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void

    .line 698
    :cond_a
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onRename$callBack$1;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onRename$callBack$1;-><init>()V

    .line 702
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-static {v1, v2, p2, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->rename(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 703
    sget-object p2, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x1

    const-string/jumbo v1, "作品名修改成功"

    invoke-virtual {p2, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    .line 704
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRenameXPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 705
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->isPositionUpdateOrRefresh(Lcom/codemao/nemo/bean/NemoWorkListItem;)I

    :cond_36
    return-void
.end method

.method private static final onUpload$lambda$11$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final parseCreateData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 1170
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1171
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 1172
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 1173
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1174
    iget-boolean v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    iput-boolean v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 1175
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1176
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    return-void
.end method

.method private final postUploadBcmEvent(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 5

    if-gez p2, :cond_f

    .line 747
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/codemao/nemo/event/UploadBcmEvent;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1b

    .line 749
    :cond_f
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/UploadBcmEvent;

    invoke-direct {v1, p1, p2}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_1b
    return-void
.end method

.method private final publishBeforeUploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 790
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;)V"
        }
    .end annotation

    .line 1483
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1484
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->PAD_SPAN_NUM:I

    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mSpanNum:I

    .line 1486
    :cond_a
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 1487
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$recyclerCompatPad$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$recyclerCompatPad$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1494
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1495
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 1496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v2

    if-eqz v2, :cond_37

    const v2, 0x7f070244

    goto :goto_3a

    :cond_37
    const v2, 0x7f07025b

    :goto_3a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1495
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1498
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    .line 1499
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1502
    :cond_4a
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$recyclerCompatPad$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$recyclerCompatPad$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private final resetAllMenu()V
    .registers 7

    .line 1459
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_5b

    .line 1460
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v2, "adapterDrafts.currentList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_3a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1461
    :cond_3a
    instance-of v5, v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz v5, :cond_59

    check-cast v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getMenuOpen()Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getShowDeleteConfirm()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1462
    :cond_4c
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setMenuOpen(Z)V

    .line 1463
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setShowDeleteConfirm(Z)V

    .line 1464
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_59
    move v2, v4

    goto :goto_29

    :cond_5b
    return-void
.end method

.method private final resetAllMenuAndScrollTop()V
    .registers 1

    .line 1443
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->resetAllMenu()V

    .line 1444
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->scrollToTop()V

    return-void
.end method

.method private final resetItemWorkId(Ljava/lang/String;)V
    .registers 9

    .line 1419
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_69

    .line 1420
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v2, "adapterDrafts.currentList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_3a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1421
    :cond_3a
    instance-of v5, v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz v5, :cond_67

    check-cast v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v5

    if-eqz v5, :cond_49

    iget-object v5, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    if-nez v5, :cond_4f

    const-string v5, ""

    goto :goto_54

    :cond_4f
    const-string v6, "it.old?.work_id ?: \"\""

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_54
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1422
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setMenuOpen(Z)V

    .line 1423
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setShowDeleteConfirm(Z)V

    .line 1424
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_67
    move v2, v4

    goto :goto_29

    :cond_69
    return-void
.end method

.method private final resetItemWorkPath(Ljava/lang/String;)V
    .registers 9

    .line 1431
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_69

    .line 1432
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v2, "adapterDrafts.currentList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_3a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1433
    :cond_3a
    instance-of v5, v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz v5, :cond_67

    check-cast v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v5

    if-eqz v5, :cond_49

    iget-object v5, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    if-nez v5, :cond_4f

    const-string v5, ""

    goto :goto_54

    :cond_4f
    const-string v6, "it.old?.coverPath ?: \"\""

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_54
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1434
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setMenuOpen(Z)V

    .line 1435
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setShowDeleteConfirm(Z)V

    .line 1436
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_67
    move v2, v4

    goto :goto_29

    :cond_69
    return-void
.end method

.method private final scrollToTop()V
    .registers 7

    .line 1448
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$scrollToTop$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$scrollToTop$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final showLoading(Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1546
    invoke-static/range {v0 .. v7}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->showPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZLjava/lang/CharSequence;ZZIILjava/lang/Object;)V

    return-void
.end method

.method private final showMenuView(Lcom/codemao/nemo/bean/NemoWorkListItem;IZZ)V
    .registers 11

    if-ltz p2, :cond_5c

    .line 907
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_11

    goto :goto_5c

    :cond_11
    if-eqz p3, :cond_4f

    .line 911
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "adapterDrafts.currentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_37

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 912
    :cond_37
    instance-of v5, v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz v5, :cond_4d

    check-cast v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 913
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setMenuOpen(Z)V

    .line 914
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4d
    move v2, v4

    goto :goto_26

    .line 918
    :cond_4f
    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setMenuOpen(Z)V

    .line 919
    invoke-virtual {p1, p4}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setShowDeleteConfirm(Z)V

    .line 920
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method static synthetic showMenuView$default(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;IZZILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 901
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showMenuView(Lcom/codemao/nemo/bean/NemoWorkListItem;IZZ)V

    return-void
.end method

.method private final showRenameDialog(Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "我的-点击修改作品名称"

    .line 754
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 755
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRenameXPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 756
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->setContent(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method private final showShareMiaoCodeDialog(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 6

    .line 940
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    if-nez v0, :cond_11

    .line 941
    new-instance v0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    .line 943
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->setData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 944
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;I)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->setShareMiaoCodeCallback(Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 952
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_29
    return-void
.end method

.method private static final showShareMiaoCodeDialog$lambda$15(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 946
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 947
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_1e
    const-string v0, "createData"

    .line 951
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->generate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method private final updateBindStatus()V
    .registers 3

    .line 1471
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isBBKLogin()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->hasPhone()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1472
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRlGoBind()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1473
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRlGoBind()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_30

    .line 1478
    :cond_27
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRlGoBind()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_30
    return-void
.end method

.method private static final updateBindStatus$lambda$29(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "我的-点击绑定手机号"

    const/4 v0, 0x0

    .line 1474
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1475
    sget-object p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindFromMain(Landroid/content/Context;)V

    return-void
.end method

.method private final uploadError(Lcom/codemao/nemo/bean/NemoWorkListItem;Ljava/lang/String;)V
    .registers 5

    .line 860
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string v0, "40101001"

    .line 861
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    if-eqz v0, :cond_2b

    .line 862
    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 864
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "作品id丢失，请重新下载发布作品"

    invoke-static {p2, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 865
    iput v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 866
    iput-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    goto :goto_3a

    :cond_2b
    const-string v0, "40100001"

    .line 867
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 868
    iput v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 869
    iput-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    const/4 p2, 0x0

    .line 870
    iput-object p2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    :cond_3a
    :goto_3a
    return-void
.end method

.method private final uploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 710
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-nez v1, :cond_c

    return-void

    .line 713
    :cond_c
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    .line 714
    invoke-static/range {v3 .. v9}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showMenuView$default(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;IZZILjava/lang/Object;)V

    .line 715
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 716
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    const-string v1, "上传中，请稍后..."

    .line 717
    invoke-direct {p0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showLoading(Ljava/lang/String;)V

    .line 718
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;ILkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final workUploadFail()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 891
    invoke-static {p0, v0, v1, v2}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V

    .line 892
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "上传失败，请检查网络后再试"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep1InitData()V
    .registers 7

    .line 176
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep1InitData()V

    .line 177
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep1InitData$1;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep1InitData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public commonStep2InitView()V
    .registers 4

    .line 185
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    .line 186
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    .line 187
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 188
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->initDraftsRecycler()V

    .line 189
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep2InitView$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep2InitView$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 202
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    const/4 v1, 0x3

    const v2, 0x7f0a08bd

    invoke-virtual {p0, v1, v2, v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->addStateLayoutClick(IILandroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->updateBindStatus()V

    return-void
.end method

.method public commonStep3ObserveData()V
    .registers 5

    .line 210
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->commonStep3ObserveData()V

    .line 211
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 212
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchPublished()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 213
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchWorkDataServer()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_46

    .line 238
    :cond_2b
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchWorkDataLocal()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 249
    :goto_46
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchKey()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$3;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_99

    .line 259
    :cond_62
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$4;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->dataObserver:Landroidx/lifecycle/Observer;

    .line 269
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsWorksData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->dataObserver:Landroidx/lifecycle/Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 270
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$5;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    const-string v1, "mine_tab_change"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 275
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$6;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    const-string v1, "mine_nemo_tab_change"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 280
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$7;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    const-string v1, "keyboard_height_change"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 286
    :goto_99
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getClickTabIndexAgain()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$8;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$8;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 291
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$9;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    const-string v1, "copy_work_nemo"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 294
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$10;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$10;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    const-string v1, "delete_work_nemo"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public enableKeyboardHeightListener()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public enableRefresh()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final onBind(Lcom/codemao/nemo/event/BindEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1238
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->updateBindStatus()V

    return-void
.end method

.method public final onCancelPublish(Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 15

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 510
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_17
    const v0, 0x7f120164

    .line 514
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f12001c

    .line 515
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120258

    .line 516
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f12002c

    .line 517
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f0

    const/4 v12, 0x0

    move-object v1, p0

    .line 513
    invoke-static/range {v1 .. v12}, Lcom/ljwx/baseapp/page/IPageDialogTips$DefaultImpls;->showDialogTips$default(Lcom/ljwx/baseapp/page/IPageDialogTips;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.ljwx.basedialog.dialog.BaseDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/ljwx/basedialog/dialog/BaseDialog;

    const/4 v1, 0x0

    .line 519
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCopy(Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "我的-点击复制作品"

    .line 551
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "正在复制..."

    .line 552
    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showLoading(Ljava/lang/String;)V

    .line 553
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1;-><init>(Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDelete(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 9

    const-string p2, "data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    const-string/jumbo v0, "我的-点击删除作品"

    .line 579
    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p2, "正在删除..."

    .line 580
    invoke-direct {p0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showLoading(Ljava/lang/String;)V

    .line 581
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onDelete$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onDelete$1;-><init>(Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDeleteBcmEvent(Lcom/codemao/nemo/event/DeleteBcmEvent;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p1, Lcom/codemao/nemo/event/DeleteBcmEvent;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_7c

    .line 1191
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getDataSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v0, :cond_45

    .line 1193
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getDataItem(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/codemao/nemo/bean/NemoWorkListItem;

    const/4 v6, 0x0

    if-eqz v5, :cond_27

    check-cast v4, Lcom/codemao/nemo/bean/NemoWorkListItem;

    goto :goto_28

    :cond_27
    move-object v4, v6

    :goto_28
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v4

    if-eqz v4, :cond_32

    iget-object v6, v4, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    :cond_32
    if-nez v6, :cond_36

    const-string v6, ""

    .line 1194
    :cond_36
    iget-object v4, p1, Lcom/codemao/nemo/event/DeleteBcmEvent;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v4, v4, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 p1, 0x1

    goto :goto_47

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_45
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_47
    if-eqz p1, :cond_7c

    .line 1201
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->deletePosition(I)V

    .line 1202
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1203
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    .line 1205
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getDataSize()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 1203
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1207
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/MineTabEvent;

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getDataSize()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_7c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1574
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->onDestroy()V

    .line 1575
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->dataObserver:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_14

    .line 1576
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsWorksData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 1578
    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDownloadBcmEvent(Lcom/codemao/nemo/event/DownloadBcmEvent;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p1, Lcom/codemao/nemo/event/DownloadBcmEvent;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    .line 1155
    iget p1, p1, Lcom/codemao/nemo/event/DownloadBcmEvent;->downloadType:I

    const/4 v1, 0x1

    if-eqz p1, :cond_4f

    if-eq p1, v1, :cond_f

    goto :goto_57

    .line 1159
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    const-string v2, "adapterDrafts.currentList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1161
    instance-of v4, v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz v4, :cond_41

    .line 1162
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_41
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 1165
    :cond_47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->updateBcmNew(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Ljava/util/List;)V

    goto :goto_57

    .line 1157
    :cond_4f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->download(Landroid/content/Context;ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    :goto_57
    return-void
.end method

.method public final onDownloadBcmResult(Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1097
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_e9

    .line 1100
    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_e9

    .line 1101
    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    sput-boolean v1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 1103
    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getPositionByPath(Ljava/lang/String;)I

    move-result v1

    .line 1104
    iget v4, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->type:I

    const-string v5, "createData"

    const-string v6, "null cannot be cast to non-null type com.codemao.nemo.bean.NemoWorkListItem"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v4, v8, :cond_5c

    .line 1105
    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    if-ne p1, v8, :cond_2f

    .line 1106
    iput v7, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    goto :goto_33

    :cond_2f
    if-ne p1, v2, :cond_33

    .line 1108
    iput v8, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1110
    :cond_33
    :goto_33
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updateDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1112
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1111
    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->parseCreateData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1115
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_5c
    const/4 v2, -0x1

    if-ne v1, v2, :cond_a4

    .line 1119
    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    if-ne p1, v8, :cond_64

    return-void

    .line 1122
    :cond_64
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string v1, "adapterDrafts.currentList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 1123
    new-instance v1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v8, v2}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1124
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 1125
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1126
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/MineTabEvent;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v1, v3, p1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_e9

    .line 1130
    :cond_a4
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1131
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->parseCreateData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1133
    iget v3, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    if-ne v3, v8, :cond_d3

    .line 1134
    iput v7, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1135
    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1136
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 1140
    :cond_d3
    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->type:I

    if-ne p1, v7, :cond_df

    .line 1141
    iput v8, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1142
    iput v8, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1143
    iget-object p1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object p1, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 1145
    :cond_df
    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1146
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_e9
    :goto_e9
    return-void
.end method

.method public final onEvent(Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    if-nez v0, :cond_28

    iget v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    .line 1232
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->curPublishData:Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    invoke-static {v0, p1, v2, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    :cond_28
    return-void
.end method

.method public final onFinishAnswer(Lcom/codemao/nemo/event/FinishAnswerEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FinishAnswerEvent;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 1225
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->curPublishData:Lcom/codemao/nemo/bean/NemoWorkListItem;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getTempPosition()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, -0x1

    :goto_16
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->uploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    :cond_19
    return-void
.end method

.method public onKeyboardHeightChange(ZI)V
    .registers 4

    .line 1540
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseFragment;->onKeyboardHeightChange(ZI)V

    .line 1541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nemo,height:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "键盘高度"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onLogin(Lcom/codemao/nemo/event/LoginEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1214
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1569
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onPause()V

    const-string/jumbo v0, "键盘高度"

    const-string v1, "nemoContent,onPause"

    .line 1570
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPublish(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_f

    .line 429
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onEnter(Lcom/codemao/nemo/bean/NemoWorkListItem;)V

    return-void

    .line 432
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 436
    :cond_21
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    :cond_2e
    const-string v0, "上传中，请稍后..."

    .line 439
    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showLoading(Ljava/lang/String;)V

    .line 440
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onPublish$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onPublish$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->publishBeforeUploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onRefreshEvent(Lcom/codemao/nemo/event/RefreshEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1219
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1562
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onResume()V

    const-string/jumbo v0, "键盘高度"

    const-string v1, "nemoContent,onResume"

    .line 1563
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->INSTANCE:Lcom/codemao/nemo/util/RootUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/RootUtils;->checkRoot(Landroid/content/Context;)V

    .line 1565
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRootHolder()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-nez v1, :cond_26

    goto :goto_33

    :cond_26
    invoke-virtual {v0}, Lcom/codemao/nemo/util/RootUtils;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x8

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_33
    return-void
.end method

.method public final onShare(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 12

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "我的-点击分享"

    .line 453
    invoke-static {v3, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1c

    iget v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_45

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    if-ne v2, v3, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-nez v2, :cond_45

    .line 456
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showShareMiaoCodeDialog(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    .line 457
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    const-string p2, "data.old.work_id"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->resetItemWorkId(Ljava/lang/String;)V

    goto/16 :goto_13c

    .line 459
    :cond_45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 460
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 463
    :cond_57
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_61

    iget-object v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_62

    :cond_61
    move-object v2, v3

    :goto_62
    if-nez v2, :cond_66

    const-string v2, "-1"

    :cond_66
    invoke-direct {p0, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->resetItemWorkId(Ljava/lang/String;)V

    .line 464
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/codemao/nemo/util/BcmHelper;->getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/ConfigVO;->getPlayer_path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v6

    if-eqz v6, :cond_91

    iget-object v6, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_92

    :cond_91
    move-object v6, v3

    :goto_92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 468
    sget-object v6, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;

    invoke-virtual {v6, v5, v4}, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->buildQRCodeStrFormBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 469
    new-instance v6, Lcom/codemao/nemo/bean/WorkShareCompatData;

    invoke-direct {v6, v5}, Lcom/codemao/nemo/bean/WorkShareCompatData;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v5

    if-eqz v5, :cond_11d

    .line 471
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 472
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 473
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 474
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    .line 475
    iget v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 476
    iget v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 477
    iget v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 478
    iget v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 479
    iget v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 480
    iget-boolean v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    .line 481
    iget-boolean v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    iput-boolean v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 482
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 483
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    .line 484
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->description:Ljava/lang/String;

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->description:Ljava/lang/String;

    .line 485
    iget-object v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    if-eqz v7, :cond_ee

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_ed

    goto :goto_ee

    :cond_ed
    const/4 v4, 0x0

    :cond_ee
    :goto_ee
    if-eqz v4, :cond_f5

    .line 486
    iget-object v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iput-object v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    goto :goto_f9

    .line 488
    :cond_f5
    iget-object v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    iput-object v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 490
    :goto_f9
    iget-wide v7, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    iput-wide v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 491
    iget-object v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    iput-object v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    .line 492
    iget v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    iput v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 493
    iget-object v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    iput-object v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    .line 494
    iget-object v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    iput-object v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 495
    iget-boolean v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isOpenAssistMode:Z

    iput-boolean v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isOpenAssistMode:Z

    .line 496
    iget-boolean v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->needShowDot:Z

    iput-boolean v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->needShowDot:Z

    .line 497
    iget-boolean v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    iput-boolean v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    .line 498
    iget-boolean v4, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMicroBit:Z

    iput-boolean v4, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMicroBit:Z

    .line 500
    :cond_11d
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-eqz p1, :cond_125

    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    :cond_125
    if-nez v3, :cond_129

    const-string v3, ""

    :cond_129
    invoke-direct {p0, v3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->resetItemWorkPath(Ljava/lang/String;)V

    const-string p1, "share_work_no_upload"

    .line 501
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "position"

    .line 503
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_13c
    return-void
.end method

.method public final onUpdate(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->onUpload(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    return-void
.end method

.method public final onUpdateWorkInfoEvents(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "updateWorkInfoEvents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_d1

    .line 1058
    :cond_13
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1059
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_28
    if-ge v2, v3, :cond_d1

    .line 1060
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.codemao.nemo.bean.NemoWorkListItem"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/codemao/nemo/bean/NemoWorkListItem;

    .line 1061
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1062
    iget-object v6, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 1063
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isError()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5e

    .line 1064
    iput v3, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1065
    iput v3, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1066
    invoke-static {v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1067
    invoke-direct {p0, v4}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->isPositionUpdateOrRefresh(Lcom/codemao/nemo/bean/NemoWorkListItem;)I

    return-void

    .line 1071
    :cond_5e
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    if-ne v0, v1, :cond_66

    const/4 v0, 0x2

    goto :goto_67

    :cond_66
    const/4 v0, 0x3

    .line 1070
    :goto_67
    iput v0, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1072
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 1073
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 1075
    :cond_79
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    if-ne v0, v1, :cond_93

    .line 1076
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 1077
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    .line 1079
    :cond_93
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBase64Str()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:image/jpeg;base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBase64Str()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1080
    invoke-static {v5, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updateCover(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;)Z

    .line 1085
    :cond_bd
    iput-boolean v3, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    .line 1086
    invoke-static {v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1087
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1088
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->scrollToTop()V

    return-void

    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_28

    :cond_d1
    return-void
.end method

.method public final onUpload(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 621
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo p2, "网络不可用，请检查网络设置"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1a
    const-string v0, "上传中，请稍后..."

    .line 624
    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showLoading(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    if-eqz v1, :cond_4c

    .line 626
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 627
    sget-object v1, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->checkUpload(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onUpload$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onUpload$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_4f

    .line 644
    :cond_4c
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->uploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public final onUploadBcmEvent(Lcom/codemao/nemo/event/UploadBcmEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1181
    iget-object v1, p1, Lcom/codemao/nemo/event/UploadBcmEvent;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    goto :goto_7

    :cond_6
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_15

    .line 1182
    new-instance v1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    iget-object p1, p1, Lcom/codemao/nemo/event/UploadBcmEvent;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->isPositionUpdateOrRefresh(Lcom/codemao/nemo/bean/NemoWorkListItem;)I

    :cond_15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableCommonSteps()V

    .line 171
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->refreshViewOnRefresh()V

    .line 172
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->updateBindStatus()V

    return-void
.end method

.method public final onWorksEvent(Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 15
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "worksEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->scrollToTop()V

    .line 1244
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms()Ljava/util/List;

    move-result-object v0

    const-string v1, "getBcms()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1244
    new-instance v6, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-direct {v6, v2, v5, v4, v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1244
    :cond_38
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1245
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 1246
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/event/MineTabEvent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_58
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v2, v1, :cond_127

    .line 1250
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v8}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1251
    iget-object v9, v8, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_123

    iget-object v9, p1, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_123

    iget-object v9, v8, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const-string v10, "createData.coverPath"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lkotlin/text/Regex;

    const-string v11, ".cover"

    .line 1252
    invoke-direct {v10, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v10, v9, v5}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v9

    .line 731
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_ba

    .line 732
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    .line 733
    :cond_99
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_ba

    .line 734
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1253
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_ad

    const/4 v11, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v11, 0x0

    :goto_ae
    if-nez v11, :cond_99

    .line 735
    invoke-interface {v10}, Ljava/util/ListIterator;->nextIndex()I

    move-result v10

    add-int/2addr v10, v7

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v9

    goto :goto_be

    .line 739
    :cond_ba
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_be
    new-array v10, v5, [Ljava/lang/String;

    .line 38
    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .line 1254
    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v5

    iget-object v10, p1, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    const-string v11, "worksEvent.desDirPath"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lkotlin/text/Regex;

    const-string v12, ".bcm"

    invoke-direct {v11, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10, v5}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v10

    .line 731
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_109

    .line 732
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    .line 733
    :cond_e8
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_109

    .line 734
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1255
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_fc

    const/4 v12, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v12, 0x0

    :goto_fd
    if-nez v12, :cond_e8

    .line 735
    invoke-interface {v11}, Ljava/util/ListIterator;->nextIndex()I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v10

    goto :goto_10d

    .line 739
    :cond_109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    :goto_10d
    new-array v11, v5, [Ljava/lang/String;

    .line 38
    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .line 1256
    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_123

    .line 1258
    new-instance v1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-direct {v1, v8, v5, v4, v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_129

    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_58

    :cond_127
    move-object v1, v3

    const/4 v2, -0x1

    .line 1263
    :goto_129
    iget-boolean v8, p1, Lcom/codemao/creativestore/bean/WorksEvent;->update:Z

    if-nez v8, :cond_199

    .line 1264
    iget p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    if-ne p1, v4, :cond_157

    if-eq v2, v6, :cond_156

    if-eqz v1, :cond_139

    .line 1266
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v3

    :cond_139
    invoke-static {v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1267
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1268
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 1269
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/codemao/nemo/event/MineTabEvent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v5, v0}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_156
    return-void

    :cond_157
    if-eq v2, v6, :cond_191

    if-eqz v1, :cond_191

    .line 1274
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-nez p1, :cond_162

    goto :goto_164

    :cond_162
    iput v7, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1275
    :goto_164
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-nez p1, :cond_16b

    goto :goto_16d

    :cond_16b
    iput v4, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1276
    :goto_16d
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1277
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1278
    new-instance p1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    invoke-direct {p1, v1, v5, v4, v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1279
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 1280
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1282
    :cond_191
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_199
    if-nez v1, :cond_1a2

    .line 1286
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    :cond_1a2
    if-eq v2, v6, :cond_1b1

    .line 1290
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1291
    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1292
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 1294
    :cond_1b1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1da

    .line 1295
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-nez p1, :cond_1c2

    goto :goto_1c4

    :cond_1c2
    iput v7, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1296
    :goto_1c4
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getAdapterDrafts()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1297
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1301
    :cond_1da
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-eqz p1, :cond_1e5

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne p1, v4, :cond_1e5

    goto :goto_1e6

    :cond_1e5
    const/4 v7, 0x0

    :goto_1e6
    if-eqz v7, :cond_206

    .line 1302
    iput-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->curPublishData:Lcom/codemao/nemo/bean/NemoWorkListItem;

    .line 1303
    invoke-virtual {v1, v5}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setTempPosition(I)V

    const-string p1, "上传中，请稍后..."

    .line 1304
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->showLoading(Ljava/lang/String;)V

    .line 1305
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1306
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    .line 1307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1310
    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onWorksEvent$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onWorksEvent$3;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Ljava/util/List;)V

    .line 1306
    invoke-virtual {p1, v2, v5, v5, v3}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    goto :goto_209

    .line 1383
    :cond_206
    invoke-direct {p0, v1, v5}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->uploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    :goto_209
    return-void
.end method

.method public refreshViewOnRefresh()V
    .registers 4

    .line 392
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->refreshViewOnRefresh()V

    .line 393
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    .line 394
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchKey:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-nez v0, :cond_4d

    .line 395
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showLoadingStateInit()V

    .line 396
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchPublished()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 397
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchKey:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkServer(ZLjava/lang/String;)V

    goto :goto_4d

    .line 399
    :cond_32
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->searchKey:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkDataLocal(Ljava/lang/String;)V

    goto :goto_4d

    .line 403
    :cond_41
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showLoadingStateInit()V

    .line 404
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsTemplateData(Z)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public viewModelProviderFromActivity()Z
    .registers 2

    .line 1554
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    return v0
.end method

.method public viewModelProviderFromFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1558
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->getSearchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;
.super Lcom/ljwx/basefragment/BaseMVVMPadFragment;
.source "MineKnContentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
        "Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;",
        "Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;",
        "Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineKnContentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineKnContentFragment.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n*L\n1#1,770:1\n1860#2,3:771\n6#3,2:774\n*S KotlinDebug\n*F\n+ 1 MineKnContentFragment.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment\n*L\n727#1:771,3\n394#1:774,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;


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

.field private final adapterAll$delegate:Lkotlin/Lazy;

.field private final adapterPublished$delegate:Lkotlin/Lazy;

.field private mSpanNum:I

.field private final recyclerView$delegate:Lkotlin/Lazy;

.field private final renamePop$delegate:Lkotlin/Lazy;

.field private final renameXPop$delegate:Lkotlin/Lazy;

.field private final rlGoBind$delegate:Lkotlin/Lazy;

.field private searchKey:Ljava/lang/String;

.field private final searchMode$delegate:Lkotlin/Lazy;

.field private final typeAdapter$delegate:Lkotlin/Lazy;

.field private final typePublished$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-y-5b0ASnus8MGOfkOpqUrSwjGM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->onRename$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4TbO-YY87GZu5og-oymUHfM47YE(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->updateBindStatus$lambda$20(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$50PYjXyIW5-96-KBu7uo0ecc0Xg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXMRpzmqlotVQJJAt2fB82RzxF0(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep2InitView$lambda$1(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ee_4OzX0WgbAJzfsUtIp8TjFsFU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7vbK2Ju3G7cCdWS48zzuOySkoo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->copyWork$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mx3wuqY82V2kdwPqYLJfyAqEwyc(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NRzx8ZtrZhiyHxkZWfJDqkCITPQ(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->cancelPublish$lambda$12(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzREAFeyWxbJNutiHRJuEnCBK_0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P_HXfMfjFUaI0njCYF977dNoANw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->cancelPublish$lambda$12$lambda$11$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rze6EA6PXhkTWagRIOhNO9vjPRo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UviBzZTz6Y-cxl_pLbPUa7i4pzA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->deleteWork$delete$lambda$15$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_kNNHGtJQqXZya8ti9n2a7ftoV8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mlV15h394dv4GB1wrJXC9Y6UHds(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pwIU_daWtP1gBRaD7KDA1NEhSaQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->publishWork$lambda$9$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$voThGQPsl4HDKoN3xozGgxTOS-4(Lcom/ljwx/basedialog/dialog/BaseDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->showDeleteTips$lambda$17(Lcom/ljwx/basedialog/dialog/BaseDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->Companion:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d0152

    .line 71
    invoke-direct {p0, v0, v0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;-><init>(II)V

    const/4 v0, 0x2

    .line 87
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->PAD_SPAN_NUM:I

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->DEFAULT_SPAN_NUM:I

    .line 89
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->mSpanNum:I

    .line 91
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$searchMode$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$searchMode$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->searchMode$delegate:Lkotlin/Lazy;

    .line 94
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$rlGoBind$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$rlGoBind$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->rlGoBind$delegate:Lkotlin/Lazy;

    .line 96
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typePublished$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typePublished$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->typePublished$delegate:Lkotlin/Lazy;

    .line 98
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->recyclerView$delegate:Lkotlin/Lazy;

    .line 100
    sget-object v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$adapterAll$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$adapterAll$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->adapterAll$delegate:Lkotlin/Lazy;

    .line 106
    sget-object v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$adapterPublished$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$adapterPublished$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->adapterPublished$delegate:Lkotlin/Lazy;

    .line 113
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typeAdapter$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typeAdapter$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->typeAdapter$delegate:Lkotlin/Lazy;

    .line 115
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renamePop$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renamePop$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->renamePop$delegate:Lkotlin/Lazy;

    .line 120
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renameXPop$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renameXPop$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->renameXPop$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$cancelPublish(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->cancelPublish(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$commonStep3ObserveData$handleData(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    .line 70
    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData$handleData(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static final synthetic access$copyWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->copyWork(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$deleteItemFromWorkId(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;J)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->deleteItemFromWorkId(J)V

    return-void
.end method

.method public static final synthetic access$deleteWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->deleteWork(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$deleteWork$delete(Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    .line 70
    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->deleteWork$delete(Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    return-void
.end method

.method public static final synthetic access$dismissLoading(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->dismissLoading()V

    return-void
.end method

.method public static final synthetic access$exportWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;I)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->exportWork(Lcom/codemao/nemo/bean/KnWorkListItem;I)V

    return-void
.end method

.method public static final synthetic access$getAdapterAll(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getAdapterAll()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapterPublished(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getAdapterPublished()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEFAULT_SPAN_NUM$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->DEFAULT_SPAN_NUM:I

    return p0
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;

    return-object p0
.end method

.method public static final synthetic access$getMSpanNum$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->mSpanNum:I

    return p0
.end method

.method public static final synthetic access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRenamePop(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSearchKey$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->searchKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSearchMode(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Z
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTypeAdapter(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTypePublished(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Z
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypePublished()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$initChildRecycler(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Z
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onRename(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;JLjava/lang/String;)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->onRename(JLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$publishWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->publishWork(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    return-void
.end method

.method public static final synthetic access$resetAllMenu(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->resetAllMenu()V

    return-void
.end method

.method public static final synthetic access$resultFail(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/baseapp/response/DataResult;J)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->resultFail(Lcom/ljwx/baseapp/response/DataResult;J)V

    return-void
.end method

.method public static final synthetic access$setSearchKey$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$shareWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;I)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->shareWork(Lcom/codemao/nemo/bean/KnWorkListItem;I)V

    return-void
.end method

.method public static final synthetic access$showRenamePop(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->showRenamePop(Lcom/codemao/nemo/bean/KnWorkListItem;)V

    return-void
.end method

.method private final cancelPublish(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 15

    const v0, 0x7f120164

    .line 541
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f12001c

    .line 542
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120258

    .line 543
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f12002c

    .line 544
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

    .line 540
    invoke-static/range {v1 .. v12}, Lcom/ljwx/baseapp/page/IPageDialogTips$DefaultImpls;->showDialogTips$default(Lcom/ljwx/baseapp/page/IPageDialogTips;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.ljwx.basedialog.dialog.BaseDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/ljwx/basedialog/dialog/BaseDialog;

    .line 546
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda3;-><init>(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final cancelPublish$lambda$12(Lcom/ljwx/basedialog/dialog/BaseDialog;Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 10

    const-string p3, "$dialog"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$data"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    .line 548
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-string/jumbo p0, "正在取消..."

    .line 549
    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->showLoading(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->cancelWorkPublish$default(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;JZILjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    new-instance p3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$cancelPublish$1$1$1;

    invoke-direct {p3, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$cancelPublish$1$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda10;

    invoke-direct {p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_41
    return-void
.end method

.method private static final cancelPublish$lambda$12$lambda$11$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method private static final commonStep2InitView$lambda$1(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final commonStep3ObserveData$handleData(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;)V"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->pullRefreshFinish()V

    .line 382
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_90

    const/4 v0, 0x1

    .line 383
    invoke-virtual {p0, v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->setStateLoadingDataSucceeded(Z)V

    .line 384
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    .line 385
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/codemao/nemo/bean/KnWorkListResponse;

    invoke-virtual {v1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->hasMore()Z

    move-result v1

    .line 386
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/codemao/nemo/bean/KnWorkListResponse;

    invoke-virtual {v3}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefresh()Z

    move-result v3

    .line 387
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/codemao/nemo/bean/KnWorkListResponse;

    invoke-virtual {v5}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v1, v3}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->addList(Ljava/util/List;ZZ)V

    if-eqz v3, :cond_57

    .line 389
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->resetAllMenuAndScrollTop()V

    .line 390
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 391
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 394
    :cond_57
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const-string v3, "recyclerView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateContent()V

    .line 397
    :cond_66
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/KnWorkListResponse;

    if-eqz p1, :cond_75

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefreshAndEmpty()Z

    move-result p1

    if-ne p1, v0, :cond_75

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    if-eqz v0, :cond_a3

    .line 398
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result p1

    if-eqz p1, :cond_82

    .line 399
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateExtend()V

    goto :goto_a3

    .line 401
    :cond_82
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypePublished()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 402
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateOffline()V

    goto :goto_a3

    .line 404
    :cond_8c
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateEmpty()V

    goto :goto_a3

    .line 409
    :cond_90
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->getStateLoadingDataSucceeded()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 410
    sget-object p0, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 p1, 0x4

    const-string/jumbo v0, "网络连接失败，请稍后重试"

    invoke-virtual {p0, p1, v0}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    goto :goto_a3

    .line 412
    :cond_a0
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateError()V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private static final commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final copyWork(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 5

    const-string/jumbo v0, "正在复制..."

    .line 570
    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->showLoading(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_19

    :cond_17
    const-wide/16 v1, -0x1

    :goto_19
    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->copyWork(J)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$copyWork$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$copyWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final copyWork$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final deleteItemFromWorkId(J)V
    .registers 11

    .line 684
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_47

    .line 685
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 686
    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 687
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/codemao/nemo/bean/KnWorkListItem;

    if-eqz v6, :cond_2c

    check-cast v5, Lcom/codemao/nemo/bean/KnWorkListItem;

    goto :goto_2d

    :cond_2c
    move-object v5, v1

    :goto_2d
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_36

    goto :goto_40

    :cond_36
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, p1, v5

    if-nez v7, :cond_40

    const/4 v5, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v5, 0x0

    :goto_41
    if-eqz v5, :cond_1b

    .line 688
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    :cond_47
    if-eqz v0, :cond_51

    .line 692
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :cond_51
    :goto_51
    if-eqz v2, :cond_76

    .line 693
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 694
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 695
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateExtend()V

    goto :goto_7d

    .line 697
    :cond_68
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypePublished()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 698
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateOffline()V

    goto :goto_7d

    .line 700
    :cond_72
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateEmpty()V

    goto :goto_7d

    .line 704
    :cond_76
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    :goto_7d
    return-void
.end method

.method private final deleteWork(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 3

    .line 598
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 599
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$1;

    invoke-direct {v0, p1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$1;-><init>(Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->showDeleteTips(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    .line 603
    :cond_f
    invoke-static {p1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->deleteWork$delete(Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    :goto_12
    return-void
.end method

.method private static final deleteWork$delete(Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 6

    .line 582
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    const-string/jumbo v0, "正在删除..."

    .line 583
    invoke-direct {p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->showLoading(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_22

    :cond_20
    const-wide/16 v1, -0x1

    :goto_22
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->deleteWork(JZ)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;

    invoke-direct {v2, p1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    new-instance p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda12;

    invoke-direct {p0, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_38
    return-void
.end method

.method private static final deleteWork$delete$lambda$15$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final dismissLoading()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 669
    invoke-static {p0, v0, v1, v2}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V

    return-void
.end method

.method private final exportWork(Lcom/codemao/nemo/bean/KnWorkListItem;I)V
    .registers 4

    .line 564
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ClipboardUtils;->copyText(Ljava/lang/CharSequence;)V

    .line 565
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 p2, 0x1

    const-string/jumbo v0, "链接已复制"

    invoke-virtual {p1, p2, v0}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    .line 566
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->resetAllMenu()V

    return-void
.end method

.method private final getAdapterAll()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->adapterAll$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    return-object v0
.end method

.method private final getAdapterPublished()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->adapterPublished$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    return-object v0
.end method

.method private final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->recyclerView$delegate:Lkotlin/Lazy;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->renamePop$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    return-object v0
.end method

.method private final getRenameXPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->renameXPop$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object v0
.end method

.method private final getRlGoBind()Landroid/widget/RelativeLayout;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->rlGoBind$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private final getSearchMode()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->searchMode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->typeAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    return-object v0
.end method

.method private final getTypePublished()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->typePublished$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final initAllRecycler(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;)V"
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemBind(Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 219
    fill-array-data v0, :array_18

    .line 218
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;

    invoke-direct {v1, p1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;-><init>(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V

    return-void

    nop

    :array_18
    .array-data 4
        0x7f0a052b
        0x7f0a016d
        0x7f0a05d5
        0x7f0a032e
        0x7f0a09b7
    .end array-data
.end method

.method private final initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 14

    .line 290
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 289
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 291
    new-instance v0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;

    const-class v4, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const v5, 0x7f0d01d8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;-><init>(Ljava/lang/Class;ILjava/lang/Integer;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 295
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    .line 305
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 306
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getMenus()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private final initPublishedAdapter(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 269
    fill-array-data v0, :array_10

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initPublishedAdapter$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initPublishedAdapter$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V

    return-void

    nop

    :array_10
    .array-data 4
        0x7f0a0717
        0x7f0a019c
    .end array-data
.end method

.method private final onRename(JLjava/lang/String;)V
    .registers 5

    .line 608
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRenameXPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 609
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->renameWork(JLjava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$onRename$1;

    invoke-direct {p3, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$onRename$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final onRename$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final publishWork(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "我的-点击发布KN作品"

    .line 482
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 486
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 490
    :cond_22
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 491
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 493
    :cond_2f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 494
    sget-object v1, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->checkPublish(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda15;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_4c
    return-void
.end method

.method private static final publishWork$lambda$9$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;)V"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 311
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->PAD_SPAN_NUM:I

    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->mSpanNum:I

    .line 313
    :cond_a
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 314
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 321
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 322
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 323
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

    .line 322
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 326
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private final resetAllMenu()V
    .registers 7

    .line 726
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

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
    if-nez v0, :cond_52

    .line 727
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v2, "typeAdapter.currentList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_3a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 728
    :cond_3a
    instance-of v5, v3, Lcom/codemao/nemo/bean/KnWorkListItem;

    if-eqz v5, :cond_50

    check-cast v3, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/KnWorkListItem;->getMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 729
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/KnWorkListItem;->setMenuOpen(Z)V

    .line 730
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_50
    move v2, v4

    goto :goto_29

    :cond_52
    return-void
.end method

.method private final resetAllMenuAndScrollTop()V
    .registers 1

    .line 721
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->resetAllMenu()V

    .line 722
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->scrollToTop()V

    return-void
.end method

.method private final resultFail(Lcom/ljwx/baseapp/response/DataResult;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "+",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 673
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    if-eqz v0, :cond_25

    .line 674
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Fail;->getCode()Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x263e489

    if-nez v0, :cond_10

    goto :goto_25

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_25

    .line 675
    invoke-direct {p0, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->deleteItemFromWorkId(J)V

    .line 676
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Fail;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 677
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private final scrollToTop()V
    .registers 7

    .line 737
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$scrollToTop$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$scrollToTop$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final shareWork(Lcom/codemao/nemo/bean/KnWorkListItem;I)V
    .registers 6

    .line 619
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 620
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 623
    :cond_12
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    new-instance v1, Lcom/codemao/nemo/bean/WorkShareCompatData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/bean/WorkShareCompatData;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 626
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 628
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string p1, "data"

    .line 629
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "position"

    .line 630
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "传递的数据:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "分享"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showDeleteTips(Lkotlin/jvm/functions/Function0;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "是否删除?"

    const-string/jumbo v2, "删除后将取消发布状态移至回收站"

    const-string/jumbo v3, "删除"

    const-string/jumbo v4, "取消"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f0

    const/4 v11, 0x0

    move-object v0, p0

    .line 636
    invoke-static/range {v0 .. v11}, Lcom/ljwx/baseapp/page/IPageDialogTips$DefaultImpls;->showDialogTips$default(Lcom/ljwx/baseapp/page/IPageDialogTips;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.ljwx.basedialog.dialog.BaseDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/ljwx/basedialog/dialog/BaseDialog;

    .line 642
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda4;-><init>(Lcom/ljwx/basedialog/dialog/BaseDialog;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showDeleteTips$lambda$17(Lcom/ljwx/basedialog/dialog/BaseDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 3

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$sure"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    .line 644
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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

    .line 665
    invoke-static/range {v0 .. v7}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->showPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZLjava/lang/CharSequence;ZZIILjava/lang/Object;)V

    return-void
.end method

.method private final showRenamePop(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 4

    .line 649
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRenameXPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 650
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->setContent(Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateBindStatus()V
    .registers 3

    .line 709
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isBBKLogin()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->hasPhone()Z

    move-result v0

    if-nez v0, :cond_27

    .line 710
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRlGoBind()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 711
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRlGoBind()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_30

    .line 716
    :cond_27
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRlGoBind()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_30
    return-void
.end method

.method private static final updateBindStatus$lambda$20(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "我的-点击绑定手机号"

    const/4 v0, 0x0

    .line 712
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 713
    sget-object p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindFromMain(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep2InitView()V
    .registers 4

    .line 143
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    .line 144
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 146
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const v1, 0x7f0d025e

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreLoadingView(I)V

    .line 147
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const v1, 0x7f0d025d

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreCompleteView(I)V

    .line 148
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypePublished()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 149
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->initPublishedAdapter(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    goto :goto_3e

    .line 151
    :cond_37
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->initAllRecycler(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    .line 153
    :goto_3e
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$1;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$1;

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreBind(Lkotlin/jvm/functions/Function2;)V

    .line 161
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypeAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnLoadMoreListener(Lkotlin/jvm/functions/Function0;)V

    .line 172
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x3

    const v1, 0x7f0a08bd

    .line 185
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->addStateLayoutClick(IILandroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    const v1, 0x7f0a0576

    .line 188
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->addStateLayoutClick(IILandroid/view/View$OnClickListener;)V

    .line 192
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->updateBindStatus()V

    return-void
.end method

.method public commonStep3ObserveData()V
    .registers 5

    .line 379
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->commonStep3ObserveData()V

    .line 416
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 417
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getWorkSearchData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_62

    .line 421
    :cond_25
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypePublished()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 422
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getWorkPublishedData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_62

    .line 426
    :cond_47
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getWorkAllData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$3;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 431
    :goto_62
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getClickTabIndexAgain()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$4;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 436
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getSearchKey()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$5;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$5;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 445
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$6;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const-string v1, "cancel_publish_kn"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 448
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$7;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const-string v1, "copy_work_kn"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 451
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$8;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const-string v1, "work_delete_kn"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 456
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$9;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const-string v1, "work_recover_kn"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 461
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$10;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$10;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const-string v1, "delete_work_kn"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 464
    sget-object v0, Lcom/codemao/nemo/common/GlobalLiveData;->INSTANCE:Lcom/codemao/nemo/common/GlobalLiveData;

    invoke-virtual {v0}, Lcom/codemao/nemo/common/GlobalLiveData;->getKN_WORK_UPDATE()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$11;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$11;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 467
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v0

    if-nez v0, :cond_fb

    .line 468
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$12;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$12;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const-string v1, "mine_tab_change"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 473
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$13;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$13;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    const-string v1, "mine_kn_tab_change"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    :cond_fb
    return-void
.end method

.method public enableKeyboardHeightListener()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public enableRefresh()Z
    .registers 2

    .line 763
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onBind(Lcom/codemao/nemo/event/BindEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 661
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->updateBindStatus()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 130
    invoke-super {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 766
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->onDestroy()V

    .line 767
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onKeyboardHeightChange(ZI)V
    .registers 4

    .line 748
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseFragment;->onKeyboardHeightChange(ZI)V

    .line 749
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "kn,height:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "键盘高度"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getRenamePop()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->setMarginBottom(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableCommonSteps()V

    .line 137
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 138
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->refreshViewOnRefresh()V

    :cond_14
    return-void
.end method

.method public final onWorkPublishSuccess(Lcom/codemao/nemo/event/CreatePublishSuccessKnEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method public refreshViewOnRefresh()V
    .registers 4

    .line 358
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->refreshViewOnRefresh()V

    .line 359
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->searchKey:Ljava/lang/String;

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
    if-nez v0, :cond_54

    .line 361
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->getStateLoadingDataSucceeded()Z

    move-result v0

    if-nez v0, :cond_23

    .line 362
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateLoading()V

    .line 364
    :cond_23
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->searchKey:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->searchWork(ZLjava/lang/String;)V

    goto :goto_54

    .line 367
    :cond_32
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->getStateLoadingDataSucceeded()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 368
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateLoading()V

    .line 370
    :cond_3b
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getTypePublished()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 371
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getPublishedWorks(Z)V

    goto :goto_54

    .line 373
    :cond_4b
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getAllWorks(Z)V

    :cond_54
    :goto_54
    return-void
.end method

.method public viewModelProviderFromActivity()Z
    .registers 2

    .line 756
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

    move-result v0

    return v0
.end method

.method public viewModelProviderFromFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 760
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->getSearchMode()Z

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

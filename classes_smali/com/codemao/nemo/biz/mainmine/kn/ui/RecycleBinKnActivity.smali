.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;
.super Lcom/ljwx/baseactivity/BaseMVVMPadActivity;
.source "RecycleBinKnActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseactivity/BaseMVVMPadActivity<",
        "Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;",
        "Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;",
        "Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecycleBinKnActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecycleBinKnActivity.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n15#2,7:321\n1860#3,3:328\n*S KotlinDebug\n*F\n+ 1 RecycleBinKnActivity.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity\n*L\n119#1:321,7\n303#1:328,3\n*E\n"
.end annotation


# instance fields
.field private final DEFAULT_SPAN_NUM:I

.field private final PAD_SPAN_NUM:I

.field private final adapter$delegate:Lkotlin/Lazy;

.field private final clean$delegate:Lkotlin/Lazy;

.field private mSpanNum:I

.field private final recyclerView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$LshhMe2Dz7d9n_FppjS97fo-MEc(Lcom/ljwx/basedialog/dialog/CustomDialog;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onClean$lambda$2$lambda$1(Lcom/ljwx/basedialog/dialog/CustomDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XIMkA_J-vES1t2Nmlb-jzrz81BE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->commonStep3ObserveData$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dkO4F5TqYfuOWb3-FB_wKxlOKPg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onRecover$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oF6OiRyAYuZzxa0GGJ13nCLIsJs(Lcom/ljwx/basedialog/dialog/CustomDialog;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onDeleteForever$lambda$5$lambda$4(Lcom/ljwx/basedialog/dialog/CustomDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v0, 0x7f0d004b

    .line 32
    invoke-direct {p0, v0, v0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;-><init>(II)V

    .line 36
    sget-object v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$adapter$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$adapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->recyclerView$delegate:Lkotlin/Lazy;

    .line 44
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->clean$delegate:Lkotlin/Lazy;

    const/4 v0, 0x2

    .line 46
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->PAD_SPAN_NUM:I

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->DEFAULT_SPAN_NUM:I

    .line 48
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->mSpanNum:I

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEFAULT_SPAN_NUM$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->DEFAULT_SPAN_NUM:I

    return p0
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;

    return-object p0
.end method

.method public static final synthetic access$getMSpanNum$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->mSpanNum:I

    return p0
.end method

.method public static final synthetic access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;

    return-object p0
.end method

.method public static final synthetic access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Z
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->getStateLoadingDataSucceeded()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$initChildRecycler(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V

    return-void
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Z
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onClean(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onClean()V

    return-void
.end method

.method public static final synthetic access$onDeleteForever(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onDeleteForever(Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V

    return-void
.end method

.method public static final synthetic access$onRecover(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onRecover(Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V

    return-void
.end method

.method public static final synthetic access$resetAllMenu(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->resetAllMenu()V

    return-void
.end method

.method public static final synthetic access$setStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Z)V
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->setStateLoadingDataSucceeded(Z)V

    return-void
.end method

.method public static final synthetic access$showLoading(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->showLoading(Ljava/lang/String;)V

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    return-object v0
.end method

.method private final getClean()Landroid/view/View;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->clean$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-clean>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->recyclerView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V
    .registers 13

    .line 126
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 125
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    new-instance v0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;

    const-class v3, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const v4, 0x7f0d01d8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;-><init>(Ljava/lang/Class;ILjava/lang/Integer;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    .line 139
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 140
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getMenus()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private final onClean()V
    .registers 7

    .line 181
    new-instance v0, Lcom/ljwx/basedialog/dialog/CustomDialog;

    invoke-direct {v0, p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0125

    .line 182
    invoke-virtual {v0, v1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setView(I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    const v1, 0x3f333333  # 0.7f

    .line 183
    invoke-virtual {v0, v1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setDimAmount(F)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 184
    invoke-virtual {v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setWidthMatch()V

    .line 185
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/basedialog/dialog/CustomDialog;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x7f0a00a0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setDismissActions(Landroid/content/DialogInterface$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 187
    invoke-virtual {v0, v5}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 188
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;

    invoke-direct {v1, v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;-><init>(Lcom/ljwx/basedialog/dialog/CustomDialog;Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    new-array v2, v2, [I

    const v3, 0x7f0a00a2

    aput v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setActions(Landroid/view/View$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 203
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final onClean$lambda$2$lambda$1(Lcom/ljwx/basedialog/dialog/CustomDialog;Landroid/content/DialogInterface;I)V
    .registers 3

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    return-void
.end method

.method private final onDeleteForever(Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V
    .registers 8

    .line 220
    new-instance p2, Lcom/ljwx/basedialog/dialog/CustomDialog;

    invoke-direct {p2, p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0126

    .line 221
    invoke-virtual {p2, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setContentView(I)V

    const v0, 0x3f333333  # 0.7f

    .line 222
    invoke-virtual {p2, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setDimAmount(F)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 223
    invoke-virtual {p2}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setWidthMatch()V

    .line 224
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/basedialog/dialog/CustomDialog;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0a00a0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p2, v0, v2}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setDismissActions(Landroid/content/DialogInterface$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 226
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;-><init>(Lcom/ljwx/basedialog/dialog/CustomDialog;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    new-array p1, v1, [I

    const v1, 0x7f0a00a2

    aput v1, p1, v4

    invoke-virtual {p2, v0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setActions(Landroid/view/View$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 246
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final onDeleteForever$lambda$5$lambda$4(Lcom/ljwx/basedialog/dialog/CustomDialog;Landroid/content/DialogInterface;I)V
    .registers 3

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    return-void
.end method

.method private final onRecover(Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V
    .registers 5

    .line 207
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getWork_id()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_13

    :cond_11
    const-wide/16 v0, -0x1

    :goto_13
    invoke-virtual {p2, v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->recoverWork(J)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onRecover$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onRecover$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final onRecover$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 251
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->PAD_SPAN_NUM:I

    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->mSpanNum:I

    .line 253
    :cond_a
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iget v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->mSpanNum:I

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 254
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 261
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 262
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 263
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v2

    if-eqz v2, :cond_33

    const v2, 0x7f070244

    goto :goto_36

    :cond_33
    const v2, 0x7f07025b

    :goto_36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 262
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 266
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private final resetAllMenu()V
    .registers 7

    .line 302
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

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

    .line 303
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v2, "adapter.currentList"

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

    .line 304
    :cond_3a
    instance-of v5, v3, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    if-eqz v5, :cond_50

    check-cast v3, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 305
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->setMenuOpen(Z)V

    .line 306
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_50
    move v2, v4

    goto :goto_29

    :cond_52
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

    .line 298
    invoke-static/range {v0 .. v7}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->showPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZLjava/lang/CharSequence;ZZIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public commonStep2InitView()V
    .registers 4

    .line 59
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep2InitView()V

    .line 60
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    .line 61
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const v1, 0x7f0d025e

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreLoadingView(I)V

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const v1, 0x7f0d025d

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreCompleteView(I)V

    .line 64
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnLoadMoreListener(Lkotlin/jvm/functions/Function0;)V

    .line 67
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemBind(Lkotlin/jvm/functions/Function2;)V

    .line 76
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 77
    fill-array-data v1, :array_60

    .line 76
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V

    .line 102
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$4;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void

    :array_60
    .array-data 4
        0x7f0a052b
        0x7f0a016d
    .end array-data
.end method

.method public commonStep3ObserveData()V
    .registers 4

    .line 144
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->commonStep3ObserveData()V

    .line 145
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->getWorksData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public commonStep4SetViewListener()V
    .registers 7

    .line 118
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep4SetViewListener()V

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->getClean()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep4SetViewListener$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep4SetViewListener$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->enableCommonSteps()V

    .line 54
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->refreshViewOnRefresh()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 314
    :try_start_0
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->onDestroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public refreshViewOnRefresh()V
    .registers 9

    .line 173
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->refreshViewOnRefresh()V

    .line 174
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->getStateLoadingDataSucceeded()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    .line 175
    invoke-static/range {v1 .. v7}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 177
    :cond_14
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->getRecycleWorks(Z)V

    return-void
.end method

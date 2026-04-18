.class public final Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EditListElementsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditListElementsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditListElementsActivity.kt\ncom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,707:1\n13543#2,2:708\n1549#3:710\n1620#3,3:711\n37#4,2:714\n*S KotlinDebug\n*F\n+ 1 EditListElementsActivity.kt\ncom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity\n*L\n294#1:708,2\n194#1:710\n194#1:711,3\n194#1:714,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$Companion;


# instance fields
.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;",
            ">;"
        }
    .end annotation
.end field

.field private dp11:I

.field private dp12:I

.field private dp16:I

.field private dp18:I

.field private dp20:I

.field private dp25:I

.field private dp28:I

.field private dp35:I

.field private dp36:I

.field private dp49:I

.field private dp8:I

.field private dp84:I

.field private itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

.field private keyboardHeight:I

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final maxSize:I

.field private preEtNumber:I

.field private stillShowAddBtn:Z


# direct methods
.method public static synthetic $r8$lambda$K9tsLBniI_kkbgGe_YujwUJKn4M(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initNumbersEditText$lambda$16$lambda$15(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KmbmOH6AoQhZcZFDb36vF8meOgk(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initKeyboardListener$lambda$22(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PsXLrob6y-lnxCEZlBai57byQOo(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initNumbersEditText$lambda$16$lambda$14(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QUjQZ_dbOvfT3YOvfWSa48odewE(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initNumbersEditText$lambda$17(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RQo53XZYB8Z0JUzdteiuJM-FcbA(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$12$lambda$11(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Lkotlin/jvm/internal/Ref$IntRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UCfmYukscTKeJe5J2TD1THWKiSQ(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$10$lambda$9(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V5DZNWuvK1vfvPeXgX7vrvCpXsI(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dispatchKeyEvent$lambda$25(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y0wo7HSigpiDxjfSSe2mh-l1aNE(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->onCreate$lambda$2$lambda$1(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_caOa2jG37DcFLx8aV5pHJ9A4Uw(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$10(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bBlBd5JHgmaHiYpd46Ue9-a34Mw(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKaWwjEPho70W7AUnvuM1AyudIw(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyToScrollRecyclerViewWhenFocusEdit$lambda$20$lambda$19$lambda$18(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$dFTwCvoDslduntii6pWPRW17cLc(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$5(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eS7VIh_ApMao5wtglSjhzwwCSWM(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewChange$lambda$24(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hNbhlCoYE7aTVbO8-9yy6rkehwg(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyToScrollRecyclerViewWhenFocusEdit$lambda$20(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oKyXQ_SpZl4MyAXeVXNuZ76_L18(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->onCreate$lambda$2(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbbTHmpSJPmUZ28zSfuYFVt0LaE(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initNumbersEditText$lambda$16(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sguSPcL9KO_oIP1v1hV9_DCM34Y(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$7$lambda$6(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wZOPmauAmZnbTQMIYXAqmkt3iv0(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$3(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xvg89DLAUsprRK041HASxFD4BzE(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$7(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydKzbc2TePo5KPcu2bhnsqhY_c8(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener$lambda$12(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->Companion:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    const/16 v0, 0x3e8

    .line 84
    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->maxSize:I

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    return-object p0
.end method

.method public static final synthetic access$getItemEditAdapter$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    return-object p0
.end method

.method public static final synthetic access$getKeyboardHeight$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    return p0
.end method

.method public static final synthetic access$getStillShowAddBtn$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->stillShowAddBtn:Z

    return p0
.end method

.method public static final synthetic access$hideAddDeleteBtn(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->hideAddDeleteBtn()V

    return-void
.end method

.method public static final synthetic access$notifyAddDeleteBtn(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyAddDeleteBtn()V

    return-void
.end method

.method public static final synthetic access$notifyToScrollRecyclerViewWhenFocusEdit(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyToScrollRecyclerViewWhenFocusEdit()V

    return-void
.end method

.method public static final synthetic access$setStillShowAddBtn$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->stillShowAddBtn:Z

    return-void
.end method

.method public static final synthetic access$showAddDeleteBtn(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->showAddDeleteBtn()V

    return-void
.end method

.method private final checkMaxSize()Z
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->maxSize:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_12

    const-string v0, "列表初始项数上限为1000，无法继续添加"

    .line 283
    invoke-static {p0, v0, v2}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x1

    return v0

    :cond_12
    return v2
.end method

.method private final clearFocus()V
    .registers 4

    .line 306
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, -0x1

    .line 307
    :goto_b
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez v2, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setCurrentFocusPosition(I)V

    :goto_13
    if-ltz v0, :cond_1c

    .line 309
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 311
    :cond_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_27

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_27
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 312
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_34

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_35

    :cond_34
    move-object v1, v0

    :goto_35
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    return-void
.end method

.method private static final dispatchKeyEvent$lambda$25(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyAddDeleteBtn()V

    return-void
.end method

.method private final hideAddDeleteBtn()V
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconAdd:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_1a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1a
    move-object v1, v0

    :goto_1b
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final initClickListener()V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutAddNewElement:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_41

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_41
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda6;->INSTANCE:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_50

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_50
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconAdd:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_62

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_63

    :cond_62
    move-object v1, v0

    :goto_63
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initClickListener$lambda$10(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->checkMaxSize()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 221
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result p1

    goto :goto_16

    :cond_15
    const/4 p1, -0x1

    :goto_16
    if-ltz p1, :cond_55

    .line 223
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    new-instance v2, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez v0, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setCurrentFocusPosition(I)V

    .line 225
    :goto_2e
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v0, :cond_3e

    .line 226
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 225
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 228
    :cond_3e
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->updateNumbersEditTextContent()V

    .line 229
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_4b

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda17;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_55
    return-void
.end method

.method private static final initClickListener$lambda$10$lambda$9(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 233
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p0, :cond_2a

    sget p1, Lcom/codemao/toolssdk/R$id;->et_input:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2a
    return-void
.end method

.method private static final initClickListener$lambda$12(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gez v0, :cond_1a

    return-void

    .line 243
    :cond_1a
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    .line 244
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    .line 246
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    :cond_35
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v0, :cond_71

    .line 249
    iput v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 250
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez p1, :cond_47

    goto :goto_4a

    :cond_47
    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setCurrentFocusPosition(I)V

    .line 251
    :goto_4a
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 252
    :cond_51
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->clearFocus()V

    .line 253
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_5c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5d

    :cond_5c
    move-object v3, p1

    :goto_5d
    invoke-virtual {v3}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 254
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyNumberEditChange()V

    .line 255
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewChange()V

    .line 256
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewVisible()V

    .line 257
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->updateNumbersEditTextContent()V

    goto :goto_b2

    .line 259
    :cond_71
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v0, :cond_84

    .line 260
    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 261
    iget-object v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    .line 259
    invoke-virtual {v0, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 263
    :cond_84
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 264
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_9c

    .line 265
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 267
    :cond_9c
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->updateNumbersEditTextContent()V

    .line 268
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_a7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a8

    :cond_a7
    move-object v3, v0

    :goto_a8
    iget-object v0, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda19;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_b2
    return-void
.end method

.method private static final initClickListener$lambda$12$lambda$11(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentFocusPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_14

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_14
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 270
    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 269
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 272
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_2f

    sget v1, Lcom/codemao/toolssdk/R$id;->et_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 273
    :cond_2f
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez v0, :cond_34

    goto :goto_39

    :cond_34
    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setCurrentFocusPosition(I)V

    .line 274
    :goto_39
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v0, :cond_44

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 275
    :cond_44
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz p1, :cond_53

    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_53
    return-void
.end method

.method private static final initClickListener$lambda$3(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->finish()V

    return-void
.end method

.method private static final initClickListener$lambda$5(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 194
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    .line 194
    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;->getEditStr()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, [Ljava/lang/String;

    const-string v1, "data"

    .line 195
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 196
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->finish()V

    return-void
.end method

.method private static final initClickListener$lambda$7(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->checkMaxSize()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 201
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    new-instance v0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->updateNumbersEditTextContent()V

    .line 203
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewVisible()V

    .line 204
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_29

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_29
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 205
    :cond_34
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_3c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3d

    :cond_3c
    move-object v0, p1

    :goto_3d
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda16;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initClickListener$lambda$7$lambda$6(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 208
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    sub-int v1, v0, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const-string v4, "binding"

    if-lt v1, v2, :cond_2f

    .line 210
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p0, :cond_28

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v3, p0

    :goto_29
    iget-object p0, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_3d

    .line 212
    :cond_2f
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p0, :cond_37

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_38

    :cond_37
    move-object v3, p0

    :goto_38
    iget-object p0, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_3d
    return-void
.end method

.method private static final initClickListener$lambda$8(Landroid/view/View;)V
    .registers 1

    .line 217
    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method

.method private final initData()V
    .registers 8

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 13543
    array-length v2, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 295
    iget-object v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    new-instance v6, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    invoke-direct {v6, v4}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 297
    :cond_25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "actorList"

    .line 299
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v2, :cond_51

    .line 300
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v2, :cond_4c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_4c
    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    :cond_51
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_59

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5a

    :cond_59
    move-object v3, v1

    :goto_5a
    iget-object v1, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final initDp()V
    .registers 2

    const/high16 v0, 0x41000000  # 8.0f

    .line 144
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp8:I

    const/high16 v0, 0x41300000  # 11.0f

    .line 145
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp11:I

    const/high16 v0, 0x41400000  # 12.0f

    .line 146
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp12:I

    const/high16 v0, 0x41800000  # 16.0f

    .line 147
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp16:I

    const/high16 v0, 0x41900000  # 18.0f

    .line 148
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp18:I

    const/high16 v0, 0x41a00000  # 20.0f

    .line 149
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp20:I

    const/high16 v0, 0x41b80000  # 23.0f

    .line 150
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    const/high16 v0, 0x41c80000  # 25.0f

    .line 151
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp25:I

    const/high16 v0, 0x41e00000  # 28.0f

    .line 152
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp28:I

    const/high16 v0, 0x420c0000  # 35.0f

    .line 153
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp35:I

    const/high16 v0, 0x42100000  # 36.0f

    .line 154
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp36:I

    const/high16 v0, 0x42440000  # 49.0f

    .line 155
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp49:I

    const/high16 v0, 0x42800000  # 64.0f

    .line 156
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    const/high16 v0, 0x42a80000  # 84.0f

    .line 157
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp84:I

    const/high16 v0, 0x42ac0000  # 86.0f

    .line 158
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    return-void
.end method

.method private final initKeyboardListener()V
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    .line 550
    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-static {p0, v0, v1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Landroid/view/View;Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V

    return-void
.end method

.method private static final initKeyboardListener$lambda$22(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iget v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    if-ne v0, p1, :cond_a

    return-void

    .line 556
    :cond_a
    iput p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    .line 557
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyNumberEditChange()V

    .line 558
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewChange()V

    .line 559
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyToScrollRecyclerViewWhenFocusEdit()V

    .line 560
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 561
    iget p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    if-lez p1, :cond_32

    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_26

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_26
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_32

    .line 562
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->showAddDeleteBtn()V

    goto :goto_35

    .line 564
    :cond_32
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->hideAddDeleteBtn()V

    :goto_35
    return-void
.end method

.method private final initNumbersEditText()V
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 333
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez v0, :cond_1a

    goto :goto_22

    :cond_1a
    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setItemFocusListener(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;)V

    .line 354
    :goto_22
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez v0, :cond_27

    goto :goto_2f

    :cond_27
    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$3;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$3;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setItemKeyEventListener(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;)V

    .line 368
    :goto_2f
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->updateNumbersEditTextContent()V

    .line 369
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_3a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    new-instance v3, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 389
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_4c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4d

    :cond_4c
    move-object v1, v0

    :goto_4d
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private static final initNumbersEditText$lambda$16(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;Z)V
    .registers 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "binding"

    const/4 v1, 0x0

    if-eqz p2, :cond_68

    .line 371
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->preEtNumber:I

    .line 372
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->hideAddDeleteBtn()V

    .line 373
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p2, :cond_1e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1e
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vMaskBg:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 374
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p2, :cond_2c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_2c
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vMaskBg:Landroid/view/View;

    new-instance v2, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p2, :cond_3e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_3e
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vMaskBg:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_4b

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4b
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 p2, 0x60000

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 380
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_5a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5b

    :cond_5a
    move-object v1, p1

    :goto_5b
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    new-instance p2, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda11;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a4

    .line 382
    :cond_68
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p2, :cond_70

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_70
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vMaskBg:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 383
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_7d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7d
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vMaskBg:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_8a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_8a
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vMaskBg:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_99

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9a

    :cond_99
    move-object v1, p1

    :goto_9a
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 386
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->updateListContentByNumbersEditText()V

    :goto_a4
    return-void
.end method

.method private static final initNumbersEditText$lambda$16$lambda$14(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_f

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_f
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 376
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->clearFocus()V

    return-void
.end method

.method private static final initNumbersEditText$lambda$16$lambda$15(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method

.method private static final initNumbersEditText$lambda$17(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1f

    .line 391
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_12

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 392
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->clearFocus()V

    .line 393
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->updateListContentByNumbersEditText()V

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private final initPadUI()V
    .registers 8

    .line 162
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->isPad()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v0, :cond_80

    .line 163
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_14

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_14
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    iget v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp18:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 165
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_2b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vEditListBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 166
    invoke-static {p0}, Lcom/codemao/toolssdk/view/indicator/buildins/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x208

    int-to-float v5, v5

    const/high16 v6, 0x44870000  # 1080.0f

    div-float/2addr v5, v6

    int-to-float v1, v1

    div-float/2addr v5, v1

    float-to-int v1, v5

    .line 167
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 168
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 169
    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp84:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 170
    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp35:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 171
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_57

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_57
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutNumbersEdit:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp36:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 173
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_6e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6e
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutAddNewElement:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp16:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 175
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_a4

    .line 177
    :cond_80
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_88

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_88
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vEditListBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    invoke-static {p0}, Lcom/codemao/toolssdk/view/indicator/buildins/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x190

    int-to-float v2, v2

    const/high16 v5, 0x44600000  # 896.0f

    div-float/2addr v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 179
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 180
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 182
    :goto_a4
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_ac

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ad

    :cond_ac
    move-object v3, v0

    :goto_ad
    iget-object v0, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method private final initRecyclerView()V
    .registers 6

    .line 665
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 666
    new-instance v0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    iget-object v4, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-direct {v0, p0, v4}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    .line 667
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_22

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_22
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 668
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 669
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_39

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_39
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/high16 v0, 0x42300000  # 44.0f

    .line 671
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v0

    .line 672
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v3, :cond_4e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4e
    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 673
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v3, :cond_5b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5b
    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initRecyclerView$1;

    invoke-direct {v4, v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initRecyclerView$1;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 684
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_6d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private final isPad()Z
    .registers 2

    .line 185
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private final notifyAddDeleteBtn()V
    .registers 6

    .line 453
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 455
    :goto_b
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 456
    :goto_15
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, -0x1

    :goto_1f
    if-ltz v3, :cond_4e

    .line 458
    iget-object v4, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v4, :cond_2b

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2b
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 461
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v4, :cond_4e

    if-gt v0, v3, :cond_3c

    if-gt v3, v2, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    if-eqz v1, :cond_4e

    .line 463
    sget v0, Lcom/codemao/toolssdk/R$id;->et_input:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 464
    :cond_4b
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->showAddDeleteBtn()V

    :cond_4e
    return-void
.end method

.method private final notifyEditBgUIChange()V
    .registers 5

    .line 631
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vEditListBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 632
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    if-lez v3, :cond_2f

    .line 633
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->isPad()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 634
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_42

    :cond_27
    const/4 v3, 0x0

    .line 636
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 637
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_42

    .line 640
    :cond_2f
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->isPad()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 641
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp35:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_42

    .line 643
    :cond_3a
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp49:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 644
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp11:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 647
    :goto_42
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_4a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4b

    :cond_4a
    move-object v1, v0

    :goto_4b
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vEditListBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final notifyNumberEditChange()V
    .registers 6

    .line 651
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutNumbersEdit:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 652
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v3, :cond_20

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_20
    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 653
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp8:I

    goto :goto_2d

    .line 655
    :cond_2b
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp12:I

    .line 657
    :goto_2d
    iget v4, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 658
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_3a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutNumbersEdit:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 659
    iget v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    if-gtz v0, :cond_51

    .line 660
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_4b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4c

    :cond_4b
    move-object v1, v0

    :goto_4c
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_51
    return-void
.end method

.method private final notifyRecyclerViewChange()V
    .registers 7

    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->saveItemEditextSelection(I)V

    .line 571
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->saveItemEditextSelection(I)V

    .line 573
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyEditBgUIChange()V

    .line 574
    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    const/4 v3, 0x0

    const-string v4, "binding"

    if-lez v1, :cond_62

    .line 575
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->isPad()Z

    move-result v1

    const/16 v5, 0x8

    if-nez v1, :cond_2e

    .line 576
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_29

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_29
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    :cond_2e
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_36

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_36
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutAddNewElement:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez v1, :cond_40

    goto :goto_43

    :cond_40
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setKeyboardShowed(Z)V

    .line 580
    :goto_43
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_a2

    .line 581
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v1, :cond_5a

    iget-object v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 582
    :cond_5a
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v1, :cond_a2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_a2

    .line 585
    :cond_62
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_6a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_6a
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_77

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_77
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutAddNewElement:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 587
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-nez v1, :cond_81

    goto :goto_84

    :cond_81
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setKeyboardShowed(Z)V

    .line 588
    :goto_84
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_a2

    .line 589
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v1, :cond_9b

    iget-object v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 590
    :cond_9b
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v1, :cond_a2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 593
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_c0

    .line 594
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_b3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b4

    :cond_b3
    move-object v3, v0

    :goto_b4
    iget-object v0, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda14;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c0
    return-void
.end method

.method private static final notifyRecyclerViewChange$lambda$24(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    if-eq v0, v1, :cond_42

    .line 597
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_1c

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1c
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_28

    .line 601
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->clearFocus()V

    goto :goto_42

    .line 603
    :cond_28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 604
    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    if-lez v1, :cond_32

    .line 605
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->showAddDeleteBtn()V

    goto :goto_42

    .line 607
    :cond_32
    sget v1, Lcom/codemao/toolssdk/R$id;->et_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_3f

    .line 608
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 609
    :cond_3f
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->clearFocus()V

    :cond_42
    :goto_42
    return-void
.end method

.method private final notifyRecyclerViewVisible()V
    .registers 8

    .line 524
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_10
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 526
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x3

    if-nez v1, :cond_26

    .line 528
    sget v1, Lcom/codemao/toolssdk/R$id;->layout_add_new_element:I

    .line 530
    sget v5, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    .line 527
    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_2e

    .line 535
    :cond_26
    sget v1, Lcom/codemao/toolssdk/R$id;->layout_add_new_element:I

    .line 537
    sget v5, Lcom/codemao/toolssdk/R$id;->recyclerView:I

    const/4 v6, 0x4

    .line 534
    invoke-virtual {v0, v1, v4, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 541
    :goto_2e
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_36

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    move-object v2, v1

    :goto_37
    iget-object v1, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private final notifyToScrollRecyclerViewWhenFocusEdit()V
    .registers 4

    .line 400
    iget v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->keyboardHeight:I

    if-gtz v0, :cond_5

    return-void

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_17

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_17
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda18;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method private static final notifyToScrollRecyclerViewWhenFocusEdit$lambda$20(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;I)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 405
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_98

    .line 406
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 407
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 408
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v3, :cond_2e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2e
    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v4, :cond_3c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3c
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 410
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v5, :cond_5a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_5a
    iget-object v5, v5, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, v4, v3

    .line 412
    iget-object v6, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne p1, v6, :cond_70

    .line 413
    iget v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp28:I

    goto :goto_75

    :cond_70
    if-nez p1, :cond_75

    .line 415
    iget p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp25:I

    neg-int v5, p1

    .line 417
    :cond_75
    :goto_75
    iput-boolean v7, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->stillShowAddBtn:Z

    .line 418
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_7f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7f
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 419
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_8d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8e

    :cond_8d
    move-object v1, p1

    :goto_8e
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p0, v4, v3}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda10;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;II)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_98
    return-void
.end method

.method private static final notifyToScrollRecyclerViewWhenFocusEdit$lambda$20$lambda$19$lambda$18(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;II)V
    .registers 11

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 421
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 422
    iget-object p0, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez p0, :cond_1a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_1a
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconDelete:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 423
    iget-object v3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v3

    if-nez v3, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_48

    .line 424
    invoke-direct {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->isPad()Z

    move-result p3

    if-eqz p3, :cond_42

    iget p3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp20:I

    sub-int/2addr p2, p3

    goto :goto_44

    :cond_42
    iget p2, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp8:I

    :goto_44
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_b6

    .line 425
    :cond_48
    iget-object v3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v3

    iget-object v6, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_5a

    const/4 v5, 0x1

    :cond_5a
    const/4 v3, -0x1

    if-eqz v5, :cond_8a

    .line 426
    iget-object p3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p3, :cond_65

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_65
    iget-object p3, p3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_73

    .line 427
    iget p3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp20:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b6

    .line 429
    :cond_73
    iget-object p2, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p2, :cond_7b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_7b
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    iget p3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp84:I

    sub-int/2addr p2, p3

    iget p3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp8:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b6

    .line 432
    :cond_8a
    iget-object v5, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v5, :cond_92

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_92
    iget-object v5, v5, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 433
    iget-object v3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v3, :cond_a2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_a2
    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_ab

    goto :goto_b1

    .line 437
    :cond_ab
    iget p2, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp20:I

    sub-int/2addr p3, p2

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b6

    .line 435
    :cond_b1
    :goto_b1
    iget p3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp20:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 440
    :goto_b6
    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget p3, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->dp8:I

    add-int/2addr p2, p3

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 441
    iget-object p0, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p0, :cond_c5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_c5
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconAdd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 442
    iget-object p0, p1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p0, :cond_d2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d3

    :cond_d2
    move-object v1, p0

    :goto_d3
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconDelete:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v3, 0x60000

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 132
    :cond_20
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_28

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v1, v0

    :goto_29
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda13;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final onCreate$lambda$2$lambda$1(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method private final saveItemEditextSelection(I)V
    .registers 4

    .line 623
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 624
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_20

    sget v0, Lcom/codemao/toolssdk/R$id;->et_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_21

    :cond_20
    move-object p1, v1

    :goto_21
    if-eqz p1, :cond_2b

    .line 625
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2b
    if-eqz p1, :cond_32

    .line 626
    sget v0, Lcom/codemao/toolssdk/R$id;->toolsdk_edittext_selection:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_32
    return-void
.end method

.method private final showAddDeleteBtn()V
    .registers 5

    .line 479
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconAdd:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final updateListContentByNumbersEditText()V
    .registers 9

    const-string v0, "binding"

    const/4 v1, 0x0

    .line 485
    :try_start_3
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v2, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_b
    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "binding.etNumbers.text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception v2

    .line 487
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    iget v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->preEtNumber:I

    .line 490
    :goto_29
    iput v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->preEtNumber:I

    .line 491
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->maxSize:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_37

    const-string v2, "列表初始项数上限为1000，无法继续添加"

    .line 492
    invoke-static {p0, v2, v4}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 495
    iget v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->maxSize:I

    .line 497
    :cond_37
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6b

    .line 498
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_46
    if-ge v4, v3, :cond_50

    .line 500
    iget-object v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 502
    :cond_50
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 503
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 504
    :cond_5f
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewVisible()V

    goto :goto_96

    .line 506
    :cond_63
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v3, :cond_96

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_96

    .line 508
    :cond_6b
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_96

    .line 509
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v2, v3

    :goto_7b
    if-ge v4, v3, :cond_8c

    .line 511
    iget-object v5, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    new-instance v6, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    const-string v7, ""

    invoke-direct {v6, v7}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 513
    :cond_8c
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    if-eqz v3, :cond_93

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 514
    :cond_93
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewVisible()V

    .line 516
    :cond_96
    :goto_96
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v3, :cond_9e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9f

    :cond_9e
    move-object v1, v3

    :goto_9f
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateNumbersEditTextContent()V
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 693
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 694
    :goto_b
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 695
    :cond_13
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->itemEditAdapter:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    const/4 v3, -0x1

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result v2

    goto :goto_1e

    :cond_1d
    const/4 v2, -0x1

    :goto_1e
    if-eq v2, v3, :cond_49

    if-lt v2, v0, :cond_24

    if-le v2, v1, :cond_49

    .line 698
    :cond_24
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v1, 0x0

    const-string v3, "binding"

    if-nez v0, :cond_2f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 699
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v0, :cond_3c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3d

    :cond_3c
    move-object v1, v0

    :goto_3d
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda12;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    :cond_49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .registers 3

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 140
    sget v0, Lcom/codemao/toolssdk/R$anim;->toolsdk_exit_bottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final fullScreen()V
    .registers 3

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    goto :goto_14

    :cond_f
    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_14
    return-void
.end method

.method public final hideBottomUIMenu()V
    .registers 5

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 95
    :goto_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_34

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 97
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    :cond_23
    if-eqz v1, :cond_2c

    .line 99
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_2c
    if-nez v1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v3, 0x2

    .line 100
    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_3b

    :cond_34
    if-nez v0, :cond_37

    goto :goto_3b

    :cond_37
    const/16 v1, 0x1002

    .line 103
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_3b
    const/16 v1, 0x1c

    if-lt v2, v1, :cond_45

    if-nez v0, :cond_42

    goto :goto_45

    :cond_42
    const/4 v1, 0x1

    .line 107
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 110
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_4f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->fullScreen()V

    .line 116
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->hideBottomUIMenu()V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_21

    .line 118
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_21
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initDp()V

    .line 121
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initClickListener()V

    .line 122
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initPadUI()V

    .line 123
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initData()V

    .line 124
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initRecyclerView()V

    .line 125
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initKeyboardListener()V

    .line 126
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->notifyRecyclerViewVisible()V

    .line 127
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initNumbersEditText()V

    .line 129
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez p1, :cond_48

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move-object v0, p1

    :goto_49
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$$ExternalSyntheticLambda15;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 545
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    if-nez v1, :cond_12

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_12
    invoke-virtual {v1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/View;Landroid/view/View;)V

    .line 546
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

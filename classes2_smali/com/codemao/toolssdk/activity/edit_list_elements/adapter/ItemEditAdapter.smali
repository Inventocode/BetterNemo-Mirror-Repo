.class public final Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "ItemEditAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;,
        Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;",
        ">;"
    }
.end annotation


# instance fields
.field private currentFocusPosition:I

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;",
            ">;"
        }
    .end annotation
.end field

.field private final dp25:I

.field private final dp28:I

.field private final firstColor:I

.field private isKeyboardShowed:Z

.field private itemFocusListener:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;

.field private itemKeyEventListener:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final secondColor:I


# direct methods
.method public static synthetic $r8$lambda$_AaR6j18Xtlp-GiQvuOr6ych4Ok(Landroid/widget/EditText;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->onBindData$lambda$3(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fj9HeIKcAuplZgN72hlmkQYz2gI(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;Landroid/widget/EditText;ILandroid/view/View;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->onBindData$lambda$0(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;Landroid/widget/EditText;ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mjR9-KHf0tM6mKaj_B8fgWABzHg(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->onBindData$lambda$1(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ysR-3m3BRqvHeNUfVkIFfh6wfIo(Landroid/widget/EditText;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->onBindData$lambda$3$lambda$2(Landroid/widget/EditText;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 19
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_edit:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->data:Ljava/util/List;

    const-string p2, "#FFF5F9FF"

    .line 32
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->secondColor:I

    const-string p2, "#FFFFFFFF"

    .line 33
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->firstColor:I

    const/high16 p2, 0x41e00000  # 28.0f

    .line 34
    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->dp28:I

    const/high16 p2, 0x41c80000  # 25.0f

    .line 35
    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->dp25:I

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->currentFocusPosition:I

    return-void
.end method

.method private static final onBindData$lambda$0(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;Landroid/widget/EditText;ILandroid/view/View;Z)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->itemFocusListener:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;

    if-eqz v0, :cond_13

    .line 73
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, v1, p2, p3, p5}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;->onItemFocusListener(Landroid/view/View;Landroid/widget/EditText;IZ)V

    .line 75
    :cond_13
    sget p2, Lcom/codemao/toolssdk/R$id;->v_rect:I

    invoke-virtual {p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p4, :cond_23

    .line 76
    sget p3, Lcom/codemao/toolssdk/R$id;->toolsdk_position:I

    invoke-virtual {p4, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24

    :cond_23
    move-object p3, p2

    :goto_24
    instance-of p4, p3, Ljava/lang/Integer;

    if-eqz p4, :cond_2b

    check-cast p3, Ljava/lang/Integer;

    goto :goto_2c

    :cond_2b
    move-object p3, p2

    :goto_2c
    const/4 p4, 0x0

    if-eqz p3, :cond_34

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_35

    :cond_34
    const/4 p3, 0x0

    .line 77
    :goto_35
    iget v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->currentFocusPosition:I

    if-ne v0, p3, :cond_4f

    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-ne p0, p3, :cond_45

    const/4 p4, 0x1

    :cond_45
    if-eqz p4, :cond_4f

    if-eqz p1, :cond_4e

    .line 78
    sget p0, Lcom/codemao/toolssdk/R$drawable;->toolsdk_rect_corner_b8:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4e
    return-void

    :cond_4f
    if-eqz p5, :cond_59

    if-eqz p1, :cond_5f

    .line 82
    sget p0, Lcom/codemao/toolssdk/R$drawable;->toolsdk_rect_corner_b8:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5f

    :cond_59
    if-nez p1, :cond_5c

    goto :goto_5f

    .line 84
    :cond_5c
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private static final onBindData$lambda$1(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->itemKeyEventListener:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;

    if-eqz p0, :cond_e

    invoke-interface {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;->onItemKeyEventListener(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static final onBindData$lambda$3(Landroid/widget/EditText;Landroid/view/View;)V
    .registers 5

    if-eqz p0, :cond_5

    .line 111
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 112
    :cond_5
    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->showSoftInput(Landroid/view/View;)V

    .line 113
    new-instance v0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final onBindData$lambda$3$lambda$2(Landroid/widget/EditText;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 113
    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_5
    return-void
.end method


# virtual methods
.method public final getCurrentFocusPosition()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->currentFocusPosition:I

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 44
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 48
    sget v1, Lcom/codemao/toolssdk/R$id;->et_input:I

    invoke-virtual {p1, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz v1, :cond_1e

    .line 49
    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/text/TextWatcher;

    if-eqz v3, :cond_1a

    check-cast v2, Landroid/text/TextWatcher;

    goto :goto_1b

    :cond_1a
    move-object v2, v0

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1e
    if-eqz p1, :cond_2b

    .line 51
    sget v2, Lcom/codemao/toolssdk/R$id;->tv_number:I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_2b
    if-eqz p1, :cond_3a

    .line 52
    sget v2, Lcom/codemao/toolssdk/R$id;->et_input:I

    if-eqz p3, :cond_36

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;->getEditStr()Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_36
    move-object v3, v0

    :goto_37
    invoke-virtual {p1, v2, v3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_3a
    if-eqz p1, :cond_43

    .line 54
    sget v2, Lcom/codemao/toolssdk/R$id;->v_bg:I

    invoke-virtual {p1, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v0

    :goto_44
    if-eqz p1, :cond_4d

    .line 55
    sget v3, Lcom/codemao/toolssdk/R$id;->v_bottom_line:I

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    .line 56
    :cond_4d
    rem-int/lit8 v3, p2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_6b

    if-eqz v2, :cond_5a

    .line 57
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->firstColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    :cond_5a
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne p2, v2, :cond_72

    if-eqz p1, :cond_72

    .line 59
    sget v2, Lcom/codemao/toolssdk/R$id;->v_bottom_line:I

    invoke-virtual {p1, v2, v5}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    goto :goto_72

    :cond_6b
    if-eqz v2, :cond_72

    .line 62
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->secondColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_72
    :goto_72
    if-eqz p1, :cond_7b

    .line 64
    sget v2, Lcom/codemao/toolssdk/R$id;->v_rect:I

    invoke-virtual {p1, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_7c

    :cond_7b
    move-object v2, v0

    .line 65
    :goto_7c
    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->currentFocusPosition:I

    if-ne v3, p2, :cond_88

    if-eqz v2, :cond_8e

    .line 66
    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_rect_corner_b8:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8e

    :cond_88
    if-nez v2, :cond_8b

    goto :goto_8e

    .line 68
    :cond_8b
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8e
    :goto_8e
    if-eqz v1, :cond_99

    .line 70
    sget v2, Lcom/codemao/toolssdk/R$id;->toolsdk_position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_99
    if-eqz v1, :cond_a3

    .line 71
    new-instance v2, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;Landroid/widget/EditText;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    :cond_a3
    new-instance v2, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$onBindData$textWatcher$1;

    invoke-direct {v2, p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$onBindData$textWatcher$1;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;)V

    if-nez v1, :cond_ab

    goto :goto_ae

    .line 101
    :cond_ab
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    :goto_ae
    if-eqz v1, :cond_b3

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_b3
    if-eqz v1, :cond_bd

    .line 104
    new-instance p3, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;)V

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_bd
    if-eqz p1, :cond_cf

    .line 110
    sget p3, Lcom/codemao/toolssdk/R$id;->tv_number:I

    invoke-virtual {p1, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_cf

    new-instance v2, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_cf
    if-nez p2, :cond_f3

    .line 116
    iget-boolean p3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->isKeyboardShowed:Z

    if-eqz p3, :cond_f3

    .line 117
    iget-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->isPad(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_e9

    if-eqz p1, :cond_115

    .line 118
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_115

    iget p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->dp25:I

    invoke-virtual {p1, v5, p2, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_115

    :cond_e9
    if-eqz p1, :cond_115

    .line 120
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_115

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_115

    .line 122
    :cond_f3
    iget-object p3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->data:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v4

    if-ne p2, p3, :cond_10c

    iget-boolean p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->isKeyboardShowed:Z

    if-eqz p2, :cond_10c

    if-eqz p1, :cond_115

    .line 123
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_115

    iget p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->dp28:I

    invoke-virtual {p1, v5, v5, v5, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_115

    :cond_10c
    if-eqz p1, :cond_115

    .line 125
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_115

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_115
    :goto_115
    if-eqz v1, :cond_11e

    .line 127
    sget p1, Lcom/codemao/toolssdk/R$id;->toolsdk_edittext_selection:I

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_11f

    :cond_11e
    move-object p1, v0

    :goto_11f
    if-eqz p1, :cond_15a

    .line 129
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_128

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_128
    if-eqz v0, :cond_12f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_138

    :cond_12f
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr p1, v4

    .line 130
    :goto_138
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const-string p3, "editText.text"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_148

    goto :goto_149

    :cond_148
    const/4 v4, 0x0

    :goto_149
    if-eqz v4, :cond_15a

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-gt p1, p2, :cond_15a

    if-ltz p1, :cond_15a

    .line 131
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_15a
    return-void
.end method

.method public bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 18
    check-cast p3, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;)V

    return-void
.end method

.method public final setCurrentFocusPosition(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->currentFocusPosition:I

    return-void
.end method

.method public final setItemFocusListener(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->itemFocusListener:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;

    return-void
.end method

.method public final setItemKeyEventListener(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->itemKeyEventListener:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;

    return-void
.end method

.method public final setKeyboardShowed(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->isKeyboardShowed:Z

    return-void
.end method

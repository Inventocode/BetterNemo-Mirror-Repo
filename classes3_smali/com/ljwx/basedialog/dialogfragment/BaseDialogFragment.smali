.class public Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BaseDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDialogFragment.kt\ncom/ljwx/basedialog/dialogfragment/BaseDialogFragment\n+ 2 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n+ 3 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 4 String.kt\ncom/ljwx/baseapp/extensions/StringKt\n*L\n1#1,161:1\n6#2,2:162\n6#2,2:171\n6#2,2:173\n6#2,2:175\n6#2,2:185\n15#3,7:164\n15#3,7:178\n15#3,7:188\n11#4:177\n11#4:187\n*S KotlinDebug\n*F\n+ 1 BaseDialogFragment.kt\ncom/ljwx/basedialog/dialogfragment/BaseDialogFragment\n*L\n79#1:162,2\n86#1:171,2\n92#1:173,2\n96#1:175,2\n111#1:185,2\n81#1:164,7\n104#1:178,7\n119#1:188,7\n98#1:177\n113#1:187\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$Companion;

.field private static commonLayout:I


# instance fields
.field private builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

.field protected mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->Companion:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$Companion;

    .line 24
    sget v0, Lcom/ljwx/basedialog/R$layout;->base_dialog_example:I

    sput v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->commonLayout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCommonLayout$cp(I)V
    .registers 1

    .line 21
    sput p0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->commonLayout:I

    return-void
.end method

.method private final setDataFromBuilder(Landroid/view/View;)V
    .registers 11

    .line 76
    iget-object v0, p0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    if-eqz v0, :cond_13f

    .line 77
    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_close:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_3d

    const-string v6, "findViewById<View>(R.id.base_dialog_close)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowClose()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 79
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowClose()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v6, 0x0

    goto :goto_2d

    :cond_2b
    const/16 v6, 0x8

    .line 6
    :goto_2d
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_30
    new-instance v6, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$setDataFromBuilder$1$1$1;

    invoke-direct {v6, p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$setDataFromBuilder$1$1$1;-><init>(Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;)V

    .line 20
    new-instance v7, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v7, v2, v3, v5, v6}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_3d
    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_66

    const-string v6, "findViewById<TextView>(R.id.base_dialog_title)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowTitle()Z

    move-result v6

    if-eqz v6, :cond_54

    const/4 v6, 0x0

    goto :goto_56

    :cond_54
    const/16 v6, 0x8

    .line 6
    :goto_56
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_66

    .line 88
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_66
    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_content_string:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v6, 0x1

    if-eqz v1, :cond_94

    const-string v7, "findViewById<TextView>(R…se_dialog_content_string)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getContent()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7e

    const/4 v7, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v7, 0x0

    :goto_7f
    if-eqz v7, :cond_83

    const/4 v7, 0x0

    goto :goto_85

    :cond_83
    const/16 v7, 0x8

    .line 6
    :goto_85
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getContent()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8f

    goto :goto_91

    :cond_8f
    const-string v7, ""

    :goto_91
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_94
    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_positive:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_eb

    const-string v7, "findViewById<TextView>(R.id.base_dialog_positive)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowPositiveButton()Z

    move-result v7

    if-eqz v7, :cond_ab

    const/4 v7, 0x0

    goto :goto_ad

    :cond_ab
    const/16 v7, 0x8

    .line 6
    :goto_ad
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowPositiveButton()Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 98
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getPositiveText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_c5

    .line 11
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c3

    goto :goto_c5

    :cond_c3
    const/4 v7, 0x0

    goto :goto_c6

    :cond_c5
    :goto_c5
    const/4 v7, 0x1

    :goto_c6
    xor-int/2addr v7, v6

    if-eqz v7, :cond_d0

    .line 99
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getPositiveText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_d0
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getPositiveListener()Landroid/view/View$OnClickListener;

    move-result-object v7

    if-eqz v7, :cond_de

    .line 102
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getPositiveListener()Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_eb

    .line 104
    :cond_de
    new-instance v7, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$setDataFromBuilder$1$4$1;

    invoke-direct {v7, p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$setDataFromBuilder$1$4$1;-><init>(Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;)V

    .line 20
    new-instance v8, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v8, v2, v3, v5, v7}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_eb
    :goto_eb
    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_negative:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_13f

    const-string v1, "findViewById<TextView>(R.id.base_dialog_negative)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowNegativeButton()Z

    move-result v1

    if-eqz v1, :cond_101

    const/4 v4, 0x0

    .line 6
    :cond_101
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowNegativeButton()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 113
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getNegativeText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_119

    .line 11
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_117

    goto :goto_119

    :cond_117
    const/4 v1, 0x0

    goto :goto_11a

    :cond_119
    :goto_119
    const/4 v1, 0x1

    :goto_11a
    xor-int/2addr v1, v6

    if-eqz v1, :cond_124

    .line 114
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getNegativeText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_124
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getNegativeListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_132

    .line 117
    invoke-virtual {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getNegativeListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_13f

    .line 119
    :cond_132
    new-instance v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$setDataFromBuilder$1$5$1;

    invoke-direct {v0, p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment$setDataFromBuilder$1$5$1;-><init>(Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;)V

    .line 20
    new-instance v1, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v1, v2, v3, v5, v0}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13f
    :goto_13f
    return-void
.end method

.method private final setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const-class v0, Landroidx/fragment/app/DialogFragment;

    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getBuilder()Lcom/ljwx/basedialog/common/BaseDialogBuilder;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    return-object v0
.end method

.method protected final getMActivity()Landroidx/appcompat/app/AppCompatActivity;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final initWidth()V
    .registers 3

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 66
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 67
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2b

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_2b
    return-void
.end method

.method public final isShowing()Z
    .registers 4

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 38
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setMActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->initWidth()V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->commonLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .registers 4

    .line 42
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 43
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 45
    :cond_1d
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_31
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setDataFromBuilder(Landroid/view/View;)V

    return-void
.end method

.method public final setBuilder$basedialog_release(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    return-object p0
.end method

.method protected final setMActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 5

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p2, p0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->tag:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 145
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "mDismissed"

    invoke-direct {p0, p0, v1, v0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "mShownByMe"

    invoke-direct {p0, p0, v1, v0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "manager.beginTransaction()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 149
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2e

    .line 151
    :cond_2b
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

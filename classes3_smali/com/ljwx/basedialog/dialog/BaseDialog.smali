.class public Lcom/ljwx/basedialog/dialog/BaseDialog;
.super Lcom/ljwx/basedialog/dialog/CustomDialog;
.source "BaseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDialog.kt\ncom/ljwx/basedialog/dialog/BaseDialog\n+ 2 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n+ 3 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 4 String.kt\ncom/ljwx/baseapp/extensions/StringKt\n*L\n1#1,163:1\n6#2,2:164\n6#2,2:173\n6#2,2:175\n6#2,2:177\n6#2,2:179\n6#2,2:181\n6#2,2:191\n15#3,7:166\n15#3,7:184\n15#3,7:194\n11#4:183\n11#4:193\n*S KotlinDebug\n*F\n+ 1 BaseDialog.kt\ncom/ljwx/basedialog/dialog/BaseDialog\n*L\n50#1:164,2\n57#1:173,2\n63#1:175,2\n70#1:177,2\n75#1:179,2\n117#1:181,2\n137#1:191,2\n52#1:166,7\n124#1:184,7\n144#1:194,7\n118#1:183\n138#1:193\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;

.field private static commonLayout:I


# instance fields
.field private builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ljwx/basedialog/dialog/BaseDialog;->Companion:Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;

    .line 26
    sget v0, Lcom/ljwx/basedialog/R$layout;->base_dialog_example:I

    sput v0, Lcom/ljwx/basedialog/dialog/BaseDialog;->commonLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/basedialog/dialog/BaseDialog;-><init>(Landroid/content/Context;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/basedialog/dialog/BaseDialog;-><init>(Landroid/content/Context;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p3}, Lcom/ljwx/basedialog/dialog/CustomDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x3f333333  # 0.7f

    .line 35
    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setDimAmount(F)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 36
    invoke-virtual {p0, p2}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setView(I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 37
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setWidthMatch()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    .line 19
    sget p2, Lcom/ljwx/basedialog/dialog/BaseDialog;->commonLayout:I

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    .line 17
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/ljwx/basedialog/dialog/BaseDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public static final synthetic access$setCommonLayout$cp(I)V
    .registers 1

    .line 17
    sput p0, Lcom/ljwx/basedialog/dialog/BaseDialog;->commonLayout:I

    return-void
.end method

.method private final getParentId(Landroid/view/View;)I
    .registers 4

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const/4 v0, -0x1

    if-eqz p1, :cond_24

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    if-ne v1, v0, :cond_1f

    .line 154
    sget v0, Lcom/ljwx/basedialog/R$id;->base_dialog_parent:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 155
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    return p1

    .line 157
    :cond_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    return p1

    :cond_24
    return v0
.end method


# virtual methods
.method public final setBuilder(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialog/BaseDialog;
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/BaseDialog;->builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    return-object p0
.end method

.method public setDataFromBuilder()V
    .registers 10

    .line 46
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/BaseDialog;->builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    if-eqz v1, :cond_114

    .line 48
    sget v2, Lcom/ljwx/basedialog/R$id;->base_dialog_close:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_43

    const-string v5, "findViewById<View>(R.id.base_dialog_close)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowClose()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 50
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowClose()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v5, 0x0

    goto :goto_31

    :cond_2f
    const/16 v5, 0x8

    .line 6
    :goto_31
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_34
    new-instance v5, Lcom/ljwx/basedialog/dialog/BaseDialog$setDataFromBuilder$1$1$1;

    invoke-direct {v5, p0}, Lcom/ljwx/basedialog/dialog/BaseDialog$setDataFromBuilder$1$1$1;-><init>(Lcom/ljwx/basedialog/dialog/BaseDialog;)V

    const-wide/16 v6, 0x1f4

    .line 20
    new-instance v8, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v8, v6, v7, v4, v5}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_43
    sget v2, Lcom/ljwx/basedialog/R$id;->base_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6c

    const-string v5, "findViewById<TextView>(R.id.base_dialog_title)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowTitle()Z

    move-result v5

    if-eqz v5, :cond_5a

    const/4 v5, 0x0

    goto :goto_5c

    :cond_5a
    const/16 v5, 0x8

    .line 6
    :goto_5c
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6c

    .line 59
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_6c
    sget v2, Lcom/ljwx/basedialog/R$id;->base_dialog_content_string:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-eqz v2, :cond_9a

    const-string v6, "findViewById<TextView>(R…se_dialog_content_string)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getContent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_84

    const/4 v6, 0x1

    goto :goto_85

    :cond_84
    const/4 v6, 0x0

    :goto_85
    if-eqz v6, :cond_89

    const/4 v6, 0x0

    goto :goto_8b

    :cond_89
    const/16 v6, 0x8

    .line 6
    :goto_8b
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getContent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_95

    goto :goto_97

    :cond_95
    const-string v6, ""

    :goto_97
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_9a
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowPositiveButton()Z

    move-result v2

    const-string v6, "findViewById<TextView>(R.id.base_dialog_positive)"

    if-eqz v2, :cond_ae

    .line 68
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getPositiveText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getPositiveListener()Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_be

    .line 70
    :cond_ae
    sget v2, Lcom/ljwx/basedialog/R$id;->base_dialog_positive:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_be

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_be
    :goto_be
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowNegativeButton()Z

    move-result v2

    const-string v7, "findViewById<TextView>(R.id.base_dialog_negative)"

    if-eqz v2, :cond_d2

    .line 73
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getNegativeText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getNegativeListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_e2

    .line 75
    :cond_d2
    sget v2, Lcom/ljwx/basedialog/R$id;->base_dialog_negative:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_e2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_e2
    :goto_e2
    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getButtonsReversal()Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowNegativeButton()Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-virtual {v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->getShowPositiveButton()Z

    move-result v1

    if-eqz v1, :cond_114

    .line 79
    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_positive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_104

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v1, v5}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setReversalButtons(Landroid/view/View;Z)V

    .line 82
    :cond_104
    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_negative:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_114

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0, v4}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setReversalButtons(Landroid/view/View;Z)V

    :cond_114
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 7

    .line 135
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_negative:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_43

    .line 136
    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/BaseDialog;->builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1, p2}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    :cond_17
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    if-eqz p1, :cond_27

    .line 11
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_27

    :cond_25
    const/4 v3, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v3, 0x1

    :goto_28
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2e

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    if-eqz p2, :cond_34

    .line 142
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_43

    .line 144
    :cond_34
    new-instance p1, Lcom/ljwx/basedialog/dialog/BaseDialog$setNegativeButton$1$1;

    invoke-direct {p1, p0}, Lcom/ljwx/basedialog/dialog/BaseDialog$setNegativeButton$1$1;-><init>(Lcom/ljwx/basedialog/dialog/BaseDialog;)V

    const-wide/16 v2, 0x1f4

    .line 20
    new-instance p2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {p2, v2, v3, v1, p1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 7

    .line 115
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/ljwx/basedialog/R$id;->base_dialog_positive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_43

    .line 116
    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/BaseDialog;->builder:Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1, p2}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    :cond_17
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    if-eqz p1, :cond_27

    .line 11
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_27

    :cond_25
    const/4 v3, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v3, 0x1

    :goto_28
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2e

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    if-eqz p2, :cond_34

    .line 122
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_43

    .line 124
    :cond_34
    new-instance p1, Lcom/ljwx/basedialog/dialog/BaseDialog$setPositiveButton$1$1;

    invoke-direct {p1, p0}, Lcom/ljwx/basedialog/dialog/BaseDialog$setPositiveButton$1$1;-><init>(Lcom/ljwx/basedialog/dialog/BaseDialog;)V

    const-wide/16 v2, 0x1f4

    .line 20
    new-instance p2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {p2, v2, v3, v1, p1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public setReversalButtons(Landroid/view/View;Z)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_50

    .line 93
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    if-eqz p2, :cond_15

    const/4 v3, -0x1

    goto :goto_19

    :cond_15
    invoke-direct {p0, p1}, Lcom/ljwx/basedialog/dialog/BaseDialog;->getParentId(Landroid/view/View;)I

    move-result v3

    :goto_19
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eqz p2, :cond_22

    .line 94
    invoke-direct {p0, p1}, Lcom/ljwx/basedialog/dialog/BaseDialog;->getParentId(Landroid/view/View;)I

    move-result v3

    goto :goto_23

    :cond_22
    const/4 v3, -0x1

    :goto_23
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eqz p2, :cond_29

    const/4 v3, -0x1

    goto :goto_2b

    .line 95
    :cond_29
    sget v3, Lcom/ljwx/basedialog/R$id;->base_dialog_positive:I

    :goto_2b
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eqz p2, :cond_31

    .line 96
    sget v2, Lcom/ljwx/basedialog/R$id;->base_dialog_negative:I

    :cond_31
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 97
    iget p2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 98
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 99
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 100
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    .line 101
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    .line 102
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 103
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 104
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 105
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_50
    return-void
.end method

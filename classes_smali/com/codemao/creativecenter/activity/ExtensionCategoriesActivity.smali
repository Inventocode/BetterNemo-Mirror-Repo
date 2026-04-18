.class public final Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;
.super Lcom/codemao/creativecenter/base/BaseCreativeActivity;
.source "ExtensionCategoriesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionCategoriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionCategoriesActivity.kt\ncom/codemao/creativecenter/activity/ExtensionCategoriesActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,124:1\n13506#2,2:125\n13506#2,2:127\n*E\n*S KotlinDebug\n*F\n+ 1 ExtensionCategoriesActivity.kt\ncom/codemao/creativecenter/activity/ExtensionCategoriesActivity\n*L\n68#1,2:125\n71#1,2:127\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;


# instance fields
.field private binding:Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->Companion:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->binding:Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    return-object p0
.end method

.method private final checkItemEnable(Ljava/lang/String;Z)V
    .registers 6

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x63476837

    if-eq v0, v2, :cond_b

    goto :goto_1a

    :cond_b
    const-string v0, "microbit"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 103
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->binding:Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->microbit:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    move-object v1, p1

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_23

    const/4 p1, 0x0

    .line 113
    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->setEnabled(Z)V

    .line 114
    invoke-virtual {v1, p2}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->setCanDelete(Z)V

    :cond_23
    return-void
.end method

.method private final initView()V
    .registers 8

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hiddenBlocks"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "it"

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    .line 125
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_28

    aget-object v6, v1, v5

    .line 69
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, v3}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->checkItemEnable(Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_28
    if-eqz v0, :cond_39

    .line 127
    array-length v1, v0

    :goto_2b
    if-ge v3, v1, :cond_39

    aget-object v4, v0, v3

    .line 72
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->checkItemEnable(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 75
    :cond_39
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->binding:Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    if-eqz v0, :cond_49

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->ivClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_49

    new-instance v1, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$3;-><init>(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_49
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->binding:Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    if-eqz v0, :cond_59

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->tvAdd:Landroid/widget/TextView;

    if-eqz v0, :cond_59

    new-instance v1, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;-><init>(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_59
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->binding:Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    if-eqz v0, :cond_66

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->microbit:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    if-eqz v0, :cond_66

    sget-object v1, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;->INSTANCE:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_66
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 50
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 52
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 53
    sget p1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v1, "window"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 54
    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    .line 53
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    :cond_21
    sget p1, Lcom/codemao/creativecenter/R$layout;->creative_activity_extension_categories:I

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->binding:Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    .line 61
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->initView()V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    .line 120
    invoke-super {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onRestart()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-static {p0, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 122
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    return-void
.end method

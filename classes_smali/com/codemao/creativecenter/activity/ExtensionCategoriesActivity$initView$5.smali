.class final Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;
.super Ljava/lang/Object;
.source "ExtensionCategoriesActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;

    invoke-direct {v0}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;->INSTANCE:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$5;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    const-string v0, "it"

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

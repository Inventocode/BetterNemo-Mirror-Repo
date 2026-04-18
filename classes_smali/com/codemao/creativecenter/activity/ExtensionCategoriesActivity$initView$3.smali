.class final Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$3;
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


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$3;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 76
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$3;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

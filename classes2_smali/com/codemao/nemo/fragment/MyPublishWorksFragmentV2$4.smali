.class Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$4;
.super Ljava/lang/Object;
.source "MyPublishWorksFragmentV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->updateBindStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindFromMain(Landroid/content/Context;)V

    return-void
.end method

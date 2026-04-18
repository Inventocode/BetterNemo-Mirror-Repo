.class Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$2;
.super Ljava/lang/Object;
.source "CmQuitePopV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$2;->this$0:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 67
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$2;->this$0:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->access$000(Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

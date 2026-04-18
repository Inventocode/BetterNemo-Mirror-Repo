.class Lcom/codemao/nemo/activity/TemplateCreateActivity$1;
.super Ljava/lang/Object;
.source "TemplateCreateActivity.java"

# interfaces
.implements Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/TemplateCreateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/TemplateCreateActivity;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$1;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public change(I)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$1;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/TemplateCreateActivity;->access$000(Lcom/codemao/nemo/activity/TemplateCreateActivity;I)V

    return-void
.end method

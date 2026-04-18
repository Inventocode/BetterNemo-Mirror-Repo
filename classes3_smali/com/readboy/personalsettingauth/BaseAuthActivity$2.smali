.class Lcom/readboy/personalsettingauth/BaseAuthActivity$2;
.super Ljava/lang/Object;
.source "BaseAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseAuthActivity;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$2;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 107
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$2;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->access$000(Landroid/app/Activity;)V

    return-void
.end method

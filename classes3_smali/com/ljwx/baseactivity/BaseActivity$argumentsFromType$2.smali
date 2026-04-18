.class final Lcom/ljwx/baseactivity/BaseActivity$argumentsFromType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseactivity/BaseActivity;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseactivity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ljwx/baseactivity/BaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseActivity$argumentsFromType$2;->this$0:Lcom/ljwx/baseactivity/BaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity$argumentsFromType$2;->this$0:Lcom/ljwx/baseactivity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle_common_from_type"

    const/16 v2, -0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity$argumentsFromType$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

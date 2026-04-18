.class final Lcom/ljwx/baseactivity/BaseActivity$mStatusBar$2;
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
        "Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseactivity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ljwx/baseactivity/BaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseActivity$mStatusBar$2;->this$0:Lcom/ljwx/baseactivity/BaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;
    .registers 3

    .line 51
    new-instance v0, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/ljwx/baseactivity/BaseActivity$mStatusBar$2;->this$0:Lcom/ljwx/baseactivity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity$mStatusBar$2;->invoke()Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;

    move-result-object v0

    return-object v0
.end method

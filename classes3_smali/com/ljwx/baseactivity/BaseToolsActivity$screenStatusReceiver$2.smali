.class final Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseToolsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseactivity/BaseToolsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2$1;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;

    invoke-direct {v0}, Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;-><init>()V

    sput-object v0, Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;->INSTANCE:Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2$1;
    .registers 2

    .line 25
    new-instance v0, Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2$1;

    invoke-direct {v0}, Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2$1;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;->invoke()Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2$1;

    move-result-object v0

    return-object v0
.end method

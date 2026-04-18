.class final Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AssistApiStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/api/AssistApiStore;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;

    invoke-direct {v0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;->INSTANCE:Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;
    .registers 3

    .line 20
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore$mService$2;->invoke()Lcom/codemao/creativecenter/vcs/api/VCSAssistApiService;

    move-result-object v0

    return-object v0
.end method

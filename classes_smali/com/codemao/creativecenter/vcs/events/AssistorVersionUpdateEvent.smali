.class public final Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;
.super Ljava/lang/Object;
.source "AssistorVersionUpdateEvent.kt"


# instance fields
.field private final hasUpdate:Z

.field private final workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "workUid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;->workUid:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;->hasUpdate:Z

    return-void
.end method


# virtual methods
.method public final getHasUpdate()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;->hasUpdate:Z

    return v0
.end method

.method public final getWorkUid()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;->workUid:Ljava/lang/String;

    return-object v0
.end method

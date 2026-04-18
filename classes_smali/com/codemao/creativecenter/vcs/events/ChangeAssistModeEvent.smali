.class public final Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;
.super Ljava/lang/Object;
.source "ChangeAssistModeEvent.kt"


# instance fields
.field private final isOpen:Z

.field private final workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "workUid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;->workUid:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;->isOpen:Z

    return-void
.end method


# virtual methods
.method public final getWorkUid()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;->workUid:Ljava/lang/String;

    return-object v0
.end method

.method public final isOpen()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;->isOpen:Z

    return v0
.end method

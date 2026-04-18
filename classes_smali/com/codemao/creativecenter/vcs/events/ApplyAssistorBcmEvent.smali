.class public final Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;
.super Ljava/lang/Object;
.source "ApplyAssistorBcmEvent.kt"


# instance fields
.field private final assistorId:Ljava/lang/String;

.field private final workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "workUid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistorId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;->workUid:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;->assistorId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAssistorId()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;->assistorId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkUid()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;->workUid:Ljava/lang/String;

    return-object v0
.end method

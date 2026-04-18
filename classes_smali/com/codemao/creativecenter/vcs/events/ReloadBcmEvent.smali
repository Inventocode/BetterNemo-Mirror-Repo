.class public final Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;
.super Ljava/lang/Object;
.source "ReloadBcmEvent.kt"


# instance fields
.field private final workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "workUid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;->workUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getWorkUid()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;->workUid:Ljava/lang/String;

    return-object v0
.end method

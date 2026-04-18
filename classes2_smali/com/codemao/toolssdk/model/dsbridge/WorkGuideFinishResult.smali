.class public final Lcom/codemao/toolssdk/model/dsbridge/WorkGuideFinishResult;
.super Ljava/lang/Object;
.source "WorkGuideFinishResult.kt"


# instance fields
.field private final finished:Ljava/lang/Boolean;

.field private final success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/WorkGuideFinishResult;->success:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/WorkGuideFinishResult;->finished:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getFinished()Ljava/lang/Boolean;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/WorkGuideFinishResult;->finished:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSuccess()Ljava/lang/Boolean;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/WorkGuideFinishResult;->success:Ljava/lang/Boolean;

    return-object v0
.end method

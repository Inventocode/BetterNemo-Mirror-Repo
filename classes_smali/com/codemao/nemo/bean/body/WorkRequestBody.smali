.class public final Lcom/codemao/nemo/bean/body/WorkRequestBody;
.super Ljava/lang/Object;
.source "WorkRequestBody.kt"


# instance fields
.field private final work_id:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/codemao/nemo/bean/body/WorkRequestBody;->work_id:J

    return-void
.end method


# virtual methods
.method public final getWork_id()J
    .registers 3

    .line 3
    iget-wide v0, p0, Lcom/codemao/nemo/bean/body/WorkRequestBody;->work_id:J

    return-wide v0
.end method

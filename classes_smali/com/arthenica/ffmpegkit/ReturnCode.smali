.class public Lcom/arthenica/ffmpegkit/ReturnCode;
.super Ljava/lang/Object;
.source "ReturnCode.java"


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 60
    iget v0, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

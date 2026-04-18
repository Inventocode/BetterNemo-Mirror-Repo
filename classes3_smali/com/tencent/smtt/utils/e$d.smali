.class Lcom/tencent/smtt/utils/e$d;
.super Lcom/tencent/smtt/utils/e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/utils/e$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tencent/smtt/utils/e$d;->d:I

    return v0
.end method

.method public b()J
    .registers 3

    iget v0, p0, Lcom/tencent/smtt/utils/e$d;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

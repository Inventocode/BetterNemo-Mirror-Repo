.class public Lcom/umeng/analytics/pro/as;
.super Lcom/umeng/analytics/pro/az;
.source "TApplicationException.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final j:Lcom/umeng/analytics/pro/bx;

.field private static final k:Lcom/umeng/analytics/pro/bn;

.field private static final l:Lcom/umeng/analytics/pro/bn;

.field private static final m:J = 0x1L


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Lcom/umeng/analytics/pro/bx;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/as;->j:Lcom/umeng/analytics/pro/bx;

    .line 35
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/as;->k:Lcom/umeng/analytics/pro/bn;

    .line 36
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/as;->l:Lcom/umeng/analytics/pro/bn;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/umeng/analytics/pro/az;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/umeng/analytics/pro/as;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/umeng/analytics/pro/az;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/umeng/analytics/pro/as;->i:I

    .line 57
    iput p1, p0, Lcom/umeng/analytics/pro/as;->i:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 61
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/umeng/analytics/pro/as;->i:I

    .line 62
    iput p1, p0, Lcom/umeng/analytics/pro/as;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/umeng/analytics/pro/as;->i:I

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bs;)Lcom/umeng/analytics/pro/as;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    :goto_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v2

    .line 82
    iget-byte v3, v2, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v3, :cond_16

    .line 106
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->k()V

    .line 108
    new-instance p0, Lcom/umeng/analytics/pro/as;

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/as;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 85
    :cond_16
    iget-short v2, v2, Lcom/umeng/analytics/pro/bn;->c:S

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_22

    .line 101
    invoke-static {p0, v3}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_3b

    :cond_22
    const/16 v2, 0x8

    if-ne v3, v2, :cond_2b

    .line 95
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v1

    goto :goto_3b

    .line 97
    :cond_2b
    invoke-static {p0, v3}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_3b

    :cond_2f
    const/16 v2, 0xb

    if-ne v3, v2, :cond_38

    .line 88
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 90
    :cond_38
    invoke-static {p0, v3}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 104
    :goto_3b
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->m()V

    goto :goto_5
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/umeng/analytics/pro/as;->i:I

    return v0
.end method

.method public b(Lcom/umeng/analytics/pro/bs;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/umeng/analytics/pro/as;->j:Lcom/umeng/analytics/pro/bx;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 114
    sget-object v0, Lcom/umeng/analytics/pro/as;->k:Lcom/umeng/analytics/pro/bn;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 118
    :cond_1a
    sget-object v0, Lcom/umeng/analytics/pro/as;->l:Lcom/umeng/analytics/pro/bn;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 119
    iget v0, p0, Lcom/umeng/analytics/pro/as;->i:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 120
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 121
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 122
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void
.end method

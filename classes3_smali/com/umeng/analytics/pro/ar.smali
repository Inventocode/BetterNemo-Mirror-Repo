.class public Lcom/umeng/analytics/pro/ar;
.super Ljava/lang/Object;
.source "ShortStack.java"


# instance fields
.field private a:[S

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/umeng/analytics/pro/ar;->b:I

    .line 32
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    return-void
.end method

.method private d()V
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [S

    .line 48
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iput-object v1, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    return-void
.end method


# virtual methods
.method public a()S
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    iget v1, p0, Lcom/umeng/analytics/pro/ar;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/umeng/analytics/pro/ar;->b:I

    aget-short v0, v0, v1

    return v0
.end method

.method public a(S)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    array-length v0, v0

    iget v1, p0, Lcom/umeng/analytics/pro/ar;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_c

    .line 41
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ar;->d()V

    .line 43
    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    iget v1, p0, Lcom/umeng/analytics/pro/ar;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/umeng/analytics/pro/ar;->b:I

    aput-short p1, v0, v1

    return-void
.end method

.method public b()S
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    iget v1, p0, Lcom/umeng/analytics/pro/ar;->b:I

    aget-short v0, v0, v1

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/umeng/analytics/pro/ar;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ShortStack vector:["

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 64
    :goto_b
    iget-object v2, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    array-length v2, v2

    if-ge v1, v2, :cond_33

    if-eqz v1, :cond_17

    const-string v2, " "

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_17
    iget v2, p0, Lcom/umeng/analytics/pro/ar;->b:I

    if-ne v1, v2, :cond_20

    const-string v2, ">>"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_20
    iget-object v2, p0, Lcom/umeng/analytics/pro/ar;->a:[S

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    iget v2, p0, Lcom/umeng/analytics/pro/ar;->b:I

    if-ne v1, v2, :cond_30

    const-string v2, "<<"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_33
    const-string v1, "]>"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

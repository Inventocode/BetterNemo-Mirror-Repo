.class public Lcom/umeng/commonsdk/statistics/noise/ABTest;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# instance fields
.field private context:Landroid/content/Context;

.field private isInTest:Z

.field private mGroup:I

.field private mInterval:I

.field private mPoli:Ljava/lang/String;

.field private mPolicy:I

.field private mProb07:F

.field private mProb13:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    .line 17
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    .line 18
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    .line 20
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .registers 5

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    monitor-enter v0

    .line 28
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    if-nez v1, :cond_25

    const-string v1, "client_test"

    const/4 v2, 0x0

    .line 32
    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "test_report_interval"

    const-string v3, "0"

    .line 33
    invoke-static {p0, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 34
    new-instance v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-direct {v3, p0, v1, v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 37
    :cond_25
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private parseFIXED(Ljava/lang/String;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "\\|"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 181
    aget-object v1, p1, v1

    const-string v2, "SIG13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x3

    .line 182
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 184
    :cond_20
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    const/4 v2, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2a

    .line 185
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return-void

    .line 190
    :cond_2a
    aget-object v0, p1, v2

    const-string v1, "FIXED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    .line 191
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_42

    :cond_41
    const/4 v0, -0x1

    :goto_42
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 195
    aget-object v6, p1, v5

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, ","

    const/4 v9, 0x5

    if-eqz v6, :cond_6f

    .line 196
    iput-object v7, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 197
    aget-object p1, p1, v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 198
    array-length v4, p1

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 199
    :goto_5d
    array-length v6, p1

    if-ge v5, v6, :cond_9a

    .line 200
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 202
    :cond_6f
    aget-object v5, p1, v5

    const-string v6, "DOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 203
    iput-object v6, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 204
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 206
    :try_start_7d
    aget-object p1, p1, v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 207
    array-length v5, p1

    new-array v4, v5, [I

    const/4 v5, 0x0

    .line 208
    :goto_87
    array-length v6, p1

    if-ge v5, v6, :cond_9a

    .line 209
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_96} :catch_99

    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :catch_99
    nop

    :cond_9a
    if-eq v0, v1, :cond_a8

    .line 216
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 217
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    if-eqz v4, :cond_aa

    sub-int/2addr v0, v3

    .line 219
    aget p1, v4, v0

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    goto :goto_aa

    .line 222
    :cond_a8
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    :cond_aa
    :goto_aa
    return-void
.end method

.method private parseSig7(Ljava/lang/String;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "\\|"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 113
    aget-object v0, p1, v0

    const-string v1, "SIG13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    .line 114
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 116
    :goto_22
    iget v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    const/4 v3, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2c

    .line 117
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return-void

    .line 122
    :cond_2c
    aget-object v0, p1, v3

    const-string v2, "SIG7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v4, ","

    const/4 v5, 0x1

    if-eqz v0, :cond_56

    .line 123
    aget-object v0, p1, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    array-length v6, v0

    new-array v6, v6, [F

    const/4 v7, 0x0

    .line 125
    :goto_44
    array-length v8, v0

    if-ge v7, v8, :cond_57

    .line 126
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_56
    move-object v6, v2

    :cond_57
    const/4 v0, 0x4

    .line 131
    aget-object v7, p1, v0

    const-string v8, "RPT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x5

    if-eqz v7, :cond_81

    .line 132
    iput-object v8, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 133
    aget-object p1, p1, v9

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 134
    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 135
    :goto_6f
    array-length v4, p1

    if-ge v0, v4, :cond_ab

    .line 136
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 138
    :cond_81
    aget-object v0, p1, v0

    const-string v7, "DOM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 139
    iput-boolean v5, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 140
    iput-object v7, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 142
    :try_start_8f
    aget-object p1, p1, v9

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 143
    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 144
    :goto_99
    array-length v4, p1

    if-ge v0, v4, :cond_ab

    .line 145
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a8} :catch_ab

    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    :catch_ab
    :cond_ab
    const/4 p1, 0x0

    .line 153
    :goto_ac
    array-length v0, v6

    const/4 v4, -0x1

    if-ge p1, v0, :cond_bd

    .line 154
    aget v0, v6, p1

    add-float/2addr v1, v0

    .line 155
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ba

    goto :goto_be

    :cond_ba
    add-int/lit8 p1, p1, 0x1

    goto :goto_ac

    :cond_bd
    const/4 p1, -0x1

    :goto_be
    if-eq p1, v4, :cond_cd

    .line 162
    iput-boolean v5, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    add-int/lit8 v0, p1, 0x1

    .line 163
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    if-eqz v2, :cond_cf

    .line 165
    aget p1, v2, p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    goto :goto_cf

    .line 168
    :cond_cd
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    :cond_cf
    :goto_cf
    return-void
.end method

.method private prob(Ljava/lang/String;I)F
    .registers 4

    mul-int/lit8 p2, p2, 0x2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    add-int/lit8 v0, p2, 0x5

    .line 49
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x49800000  # 1048576.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public static validate(Ljava/lang/String;)Z
    .registers 7

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "\\|"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 83
    array-length v0, p0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_13

    return v1

    .line 87
    :cond_13
    aget-object v0, p0, v1

    const-string v2, "SIG7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, ","

    const/4 v4, 0x1

    if-eqz v0, :cond_32

    .line 88
    aget-object v0, p0, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 89
    aget-object v5, p0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v0, v5, :cond_32

    return v4

    .line 95
    :cond_32
    aget-object v0, p0, v1

    const-string v5, "FIXED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 96
    aget-object v0, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 97
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt v0, p0, :cond_4e

    if-lt p0, v4, :cond_4e

    return v4

    :cond_4e
    return v1
.end method


# virtual methods
.method public getGroup()I
    .registers 2

    .line 239
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    return v0
.end method

.method public getGroupInfo()Ljava/lang/String;
    .registers 2

    .line 243
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    if-nez v0, :cond_7

    const-string v0, "error"

    return-object v0

    .line 245
    :cond_7
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestInterval()I
    .registers 2

    .line 235
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    return v0
.end method

.method public getTestName()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    return-object v0
.end method

.method public getTestPolicy()I
    .registers 2

    .line 231
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    return v0
.end method

.method public isInTest()Z
    .registers 2

    .line 227
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return v0
.end method

.method public onExperimentChanged(Ljava/lang/String;I)V
    .registers 5

    .line 57
    iput p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    .line 58
    iget-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_55

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_55

    :cond_16
    const/16 v0, 0xc

    .line 64
    :try_start_18
    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    const/4 v0, 0x6

    .line 65
    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result p2

    iput p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    const-string p2, "SIG7"

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 67
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseSig7(Ljava/lang/String;)V

    goto :goto_54

    :cond_31
    const-string p2, "FIXED"

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 69
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseFIXED(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3d

    goto :goto_54

    :catch_3d
    move-exception p2

    .line 72
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    return-void

    .line 60
    :cond_55
    :goto_55
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return-void
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .registers 5

    const-string v0, "client_test"

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "0"

    .line 255
    invoke-virtual {p1, v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " p13:"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " p07:"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " policy:"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interval:"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

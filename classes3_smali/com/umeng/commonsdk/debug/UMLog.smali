.class public Lcom/umeng/commonsdk/debug/UMLog;
.super Ljava/lang/Object;
.source "UMLog.java"


# static fields
.field private static final AQ:Ljava/lang/String; = "├───────────────────解决方案─────────────────────────────────────────────────────────────────────────────"

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

.field private static final BOTTOM_LEFT_CORNER:C = '└'

.field private static final DOUBLE_DIVIDER:Ljava/lang/String; = "────────────────────────────────────────────────────────"

.field private static final DOUBLE_DIVIDER_AQ:Ljava/lang/String; = "───────────────────问题─────────────────────"

.field private static final HORIZONTAL_LINE:C = '│'

.field private static final INDENT:Ljava/lang/String; = "     "

.field private static final JSON_INDENT:I = 0x2

.field private static final KEYLENGTH:I = 0xa

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"

.field private static final MIDDLE_CORNER:C = '├'

.field private static final SINGLE_DIVIDER:Ljava/lang/String; = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"

.field private static final SINGLE_DIVIDER_AQ:Ljava/lang/String; = "───────────────────解决方案─────────────────────"

.field private static final TAG:Ljava/lang/String; = "UMLog"

.field private static final TOP_BORDER:Ljava/lang/String; = "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

.field private static final TOP_BORDER_AQ:Ljava/lang/String; = "┌───────────────────问题─────────────────────────────────────────────────────────────────────────────"

.field private static final TOP_LEFT_CORNER:C = '┌'


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aq(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "│     "

    const-string v1, "UMLog"

    .line 41
    :try_start_4
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 44
    :cond_b
    invoke-static {p0}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p0

    const-string v2, "┌───────────────────问题─────────────────────────────────────────────────────────────────────────────"

    .line 45
    invoke-interface {p0, v1, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "├───────────────────解决方案─────────────────────────────────────────────────────────────────────────────"

    .line 47
    invoke-interface {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 49
    invoke-interface {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_42

    :catch_42
    return-void
.end method

.method public static aq(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 88
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static aq(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "│     "

    .line 65
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 68
    :cond_9
    invoke-static {p1}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UMLog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "┌───────────────────问题─────────────────────────────────────────────────────────────────────────────"

    .line 70
    invoke-interface {p1, p0, v1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "├───────────────────解决方案─────────────────────────────────────────────────────────────────────────────"

    .line 72
    invoke-interface {p1, p0, p2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 74
    invoke-interface {p1, p0, p2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_51} :catch_51

    :catch_51
    return-void
.end method

.method public static aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 105
    invoke-static/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 118
    invoke-static/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    const-string v0, "│     "

    .line 139
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 144
    :cond_9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "UMLog"

    goto :goto_23

    .line 147
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UMLog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    :goto_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b6

    .line 155
    array-length p3, p1

    const/4 v1, 0x2

    if-lt p3, v1, :cond_b6

    const/4 p3, 0x0

    if-eqz p4, :cond_5a

    .line 156
    array-length v1, p4

    if-lez v1, :cond_5a

    if-eqz p5, :cond_5a

    array-length v1, p5

    if-lez v1, :cond_5a

    const/4 v1, 0x0

    .line 157
    :goto_45
    array-length v2, p4

    if-ge v1, v2, :cond_5a

    array-length v2, p5

    if-ge v1, v2, :cond_5a

    .line 158
    aget-object v2, p1, p3

    aget-object v3, p4, v1

    aget-object v4, p5, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_5a
    const/4 p4, 0x1

    if-eqz p6, :cond_7b

    .line 161
    array-length p5, p6

    if-lez p5, :cond_7b

    if-eqz p7, :cond_7b

    array-length p5, p7

    if-lez p5, :cond_7b

    const/4 p5, 0x0

    .line 162
    :goto_66
    array-length v1, p6

    if-ge p5, v1, :cond_7b

    array-length v1, p7

    if-ge p5, v1, :cond_7b

    .line 163
    aget-object v1, p1, p4

    aget-object v2, p6, p5

    aget-object v3, p7, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p4

    add-int/lit8 p5, p5, 0x1

    goto :goto_66

    .line 166
    :cond_7b
    invoke-static {p2}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p2

    const-string p5, "┌───────────────────问题─────────────────────────────────────────────────────────────────────────────"

    .line 167
    invoke-interface {p2, p0, p5}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "├───────────────────解决方案─────────────────────────────────────────────────────────────────────────────"

    .line 169
    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, p4

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 171
    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b6} :catch_b6

    :catch_b6
    :cond_b6
    return-void
.end method

.method public static bundle(ILandroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    .line 348
    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->bundle(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static bundle(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    const-string v0, "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"

    .line 362
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 366
    :cond_9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "UMLog"

    goto :goto_23

    .line 369
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UMLog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_23
    if-eqz p2, :cond_81

    .line 373
    invoke-static {p1}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p1

    const-string v1, "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 374
    invoke-interface {p1, p0, v1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "│key│value"

    .line 375
    invoke-interface {p1, p0, v1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-interface {p1, p0, v0}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2502

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-interface {p1, p0, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-interface {p1, p0, v0}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_7c
    const-string p2, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 384
    invoke-interface {p1, p0, p2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_81} :catch_81

    :catch_81
    :cond_81
    return-void
.end method

.method public static getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;
    .registers 2

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    .line 491
    new-instance p0, Lcom/umeng/commonsdk/debug/D;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/D;-><init>()V

    goto :goto_28

    .line 488
    :cond_11
    new-instance p0, Lcom/umeng/commonsdk/debug/D;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/D;-><init>()V

    goto :goto_28

    .line 485
    :cond_17
    new-instance p0, Lcom/umeng/commonsdk/debug/I;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/I;-><init>()V

    goto :goto_28

    .line 482
    :cond_1d
    new-instance p0, Lcom/umeng/commonsdk/debug/W;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/W;-><init>()V

    goto :goto_28

    .line 479
    :cond_23
    new-instance p0, Lcom/umeng/commonsdk/debug/E;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/E;-><init>()V

    :goto_28
    return-object p0
.end method

.method public static jsonArry(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 450
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 453
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UMLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 454
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method public static jsonArry(Lorg/json/JSONArray;)V
    .registers 2

    .line 433
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x2

    .line 436
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UMLog"

    .line 437
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public static jsonObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 416
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 419
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UMLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 420
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method public static jsonObject(Lorg/json/JSONObject;)V
    .registers 2

    .line 398
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x2

    .line 401
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UMLog"

    .line 402
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public static varargs mutlInfo(I[Ljava/lang/String;)V
    .registers 7

    .line 188
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 191
    :cond_7
    array-length v0, p1

    .line 192
    invoke-static {p0}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_49

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "UMLog"

    if-ne v0, v2, :cond_18

    .line 194
    :try_start_12
    aget-object p1, p1, v1

    invoke-interface {p0, v3, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_18
    const/4 v2, 0x2

    if-lt v0, v2, :cond_49

    const-string v2, "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 196
    invoke-interface {p0, v3, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    if-ge v1, v0, :cond_44

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "│     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_41

    const-string v2, "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"

    .line 200
    invoke-interface {p0, v3, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_44
    const-string p1, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 205
    invoke-interface {p0, v3, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    :goto_49
    return-void
.end method

.method public static mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 252
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 7

    .line 221
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 224
    :cond_7
    array-length v0, p2

    .line 225
    invoke-static {p1}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p1

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UMLog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 228
    aget-object p2, p2, v1

    invoke-interface {p1, p0, p2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_27
    const/4 v2, 0x2

    if-lt v0, v2, :cond_58

    const-string v2, "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 230
    invoke-interface {p1, p0, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    if-ge v1, v0, :cond_53

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "│     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p0, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_50

    const-string v2, "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"

    .line 234
    invoke-interface {p1, p0, v2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_53
    const-string p2, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 237
    invoke-interface {p1, p0, p2}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_58

    :catch_58
    :cond_58
    :goto_58
    return-void
.end method

.method public static mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 280
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    .line 298
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 302
    :cond_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "UMLog"

    goto :goto_21

    .line 305
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UMLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 311
    :goto_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    const/4 v0, 0x0

    if-eqz p4, :cond_44

    .line 312
    array-length v1, p4

    if-lez v1, :cond_44

    if-eqz p5, :cond_44

    array-length v1, p5

    if-lez v1, :cond_44

    const/4 v1, 0x0

    .line 313
    :goto_33
    array-length v2, p4

    if-ge v1, v2, :cond_44

    array-length v2, p5

    if-ge v1, v2, :cond_44

    .line 314
    aget-object v2, p4, v1

    aget-object v3, p5, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 317
    :cond_44
    invoke-static {p2}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p2

    .line 318
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_52

    .line 319
    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 321
    :cond_52
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_88

    const-string p3, "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 323
    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_5d
    array-length p3, p1

    if-ge v0, p3, :cond_83

    .line 325
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "│     "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, p1, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    if-eq v0, p3, :cond_80

    const-string p3, "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"

    .line 327
    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_83
    const-string p1, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────"

    .line 330
    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_88} :catch_88

    :catch_88
    :cond_88
    :goto_88
    return-void
.end method

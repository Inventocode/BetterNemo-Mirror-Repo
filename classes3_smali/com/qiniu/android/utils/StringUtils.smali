.class public final Lcom/qiniu/android/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, ""

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    const-string v2, ""

    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    if-nez v0, :cond_1a

    const/4 v3, 0x0

    goto :goto_2a

    .line 46
    :cond_1a
    aget-object v3, p0, v1

    if-nez v3, :cond_21

    const/16 v3, 0x10

    goto :goto_27

    :cond_21
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_27
    add-int/2addr v3, v2

    mul-int v3, v3, v0

    .line 47
    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_2f
    if-ge v1, v0, :cond_42

    if-lez v1, :cond_36

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_36
    aget-object v3, p0, v1

    if-eqz v3, :cond_3f

    .line 54
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 57
    :cond_42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    .line 137
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_1b

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1b

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 142
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toNonnullString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    goto :goto_14

    .line 127
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0
.end method

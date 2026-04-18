.class public Lcn/codemao/android/sketch/utils/ValidateUtils;
.super Ljava/lang/Object;
.source "ValidateUtils.java"


# direct methods
.method public static getStringLength(Ljava/lang/String;)D
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 41
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    add-int/lit8 v3, v2, 0x1

    .line 42
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcn/codemao/android/sketch/utils/ValidateUtils;->isChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    goto :goto_1a

    :cond_18
    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    :goto_1a
    add-double/2addr v0, v4

    move v2, v3

    goto :goto_3

    :cond_1d
    return-wide v0
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isMatchers(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 34
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isName(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[\\u4e00-\\u9fa5a-zA-Z0-9][\\u4e00-\\u9fa5a-zA-Z0-9 _-]*"

    .line 14
    invoke-static {p0, v0}, Lcn/codemao/android/sketch/utils/ValidateUtils;->isMatchers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

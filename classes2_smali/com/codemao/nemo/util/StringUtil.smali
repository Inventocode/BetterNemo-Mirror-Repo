.class public Lcom/codemao/nemo/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final ONE_HUNDRED_MILLION:Ljava/lang/Long;

.field private static final TEN_THOUSAND:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2710

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/StringUtil;->TEN_THOUSAND:Ljava/lang/Long;

    const-wide/32 v0, 0x5f5e100

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/StringUtil;->ONE_HUNDRED_MILLION:Ljava/lang/Long;

    return-void
.end method

.method public static appendUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    if-nez p1, :cond_8

    return-object p0

    :cond_8
    const-string v0, "/"

    .line 1005
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_46

    .line 1008
    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1011
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1006
    :cond_46
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const-string v0, "\\."

    .line 918
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 919
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 920
    array-length v0, p0

    array-length v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_12

    goto :goto_32

    .line 922
    :cond_12
    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_18

    :goto_16
    const/4 v2, 0x1

    goto :goto_32

    :cond_18
    const/4 v0, 0x0

    .line 925
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_31

    .line 926
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 927
    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v1, v5, :cond_2b

    goto :goto_32

    :cond_2b
    if-ge v1, v5, :cond_2e

    goto :goto_16

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_31
    const/4 v2, 0x0

    :goto_32
    return v2
.end method

.method public static getDynamicOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_74

    goto :goto_58

    :sswitch_c
    const-string v0, "UPDATE_WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_58

    :cond_15
    const/4 v1, 0x6

    goto :goto_58

    :sswitch_17
    const-string v0, "PUBLISH_WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_58

    :cond_20
    const/4 v1, 0x5

    goto :goto_58

    :sswitch_22
    const-string v0, "RE_CREATE_WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_58

    :cond_2b
    const/4 v1, 0x4

    goto :goto_58

    :sswitch_2d
    const-string v0, "ATTENTION_USER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_58

    :cond_36
    const/4 v1, 0x3

    goto :goto_58

    :sswitch_38
    const-string v0, "COMMENT_WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_58

    :cond_41
    const/4 v1, 0x2

    goto :goto_58

    :sswitch_43
    const-string v0, "LIKE_WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_58

    :cond_4c
    const/4 v1, 0x1

    goto :goto_58

    :sswitch_4e
    const-string v0, "COLLECTION_WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    packed-switch v1, :pswitch_data_92

    const-string p0, ""

    goto :goto_72

    :pswitch_5e  #0x6
    const-string p0, "更新了作品"

    goto :goto_72

    :pswitch_61  #0x5
    const-string p0, "发表了作品"

    goto :goto_72

    :pswitch_64  #0x4
    const-string p0, "对该作品进行了再创作"

    goto :goto_72

    :pswitch_67  #0x3
    const-string p0, "关注了用户"

    goto :goto_72

    :pswitch_6a  #0x2
    const-string p0, "发表了评论"

    goto :goto_72

    :pswitch_6d  #0x1
    const-string p0, "赞了作品"

    goto :goto_72

    :pswitch_70  #0x0
    const-string p0, "收藏了作品"

    :goto_72
    return-object p0

    nop

    :sswitch_data_74
    .sparse-switch
        -0x7c6e2fee -> :sswitch_4e
        -0x61e40947 -> :sswitch_43
        -0x44b072ef -> :sswitch_38
        -0x2a2fa594 -> :sswitch_2d
        -0x1e0bab98 -> :sswitch_22
        0x1cce8c61 -> :sswitch_17
        0x5fe9e0c7 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_70  #00000000
        :pswitch_6d  #00000001
        :pswitch_6a  #00000002
        :pswitch_67  #00000003
        :pswitch_64  #00000004
        :pswitch_61  #00000005
        :pswitch_5e  #00000006
    .end packed-switch
.end method

.method public static getEmotionStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 751
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 754
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    .line 755
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 756
    array-length v2, p0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_30

    aget-object v4, p0, v3

    const-string v5, "["

    .line 757
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".gif"

    .line 758
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    .line 759
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 761
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilterNickName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 147
    invoke-static {}, Lcom/codemao/nemo/util/EmojiRegexUtil;->getFullEmojiRegex()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "️"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilterSearchStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    invoke-static {}, Lcom/codemao/nemo/util/EmojiRegexUtil;->getFullEmojiRegex()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "️"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^[^\\u4e00-\\u9fa5A-Za-z0-9 &—\'！!()（）_-]+$"

    .line 473
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    .line 474
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_27

    add-int/lit8 v3, v2, 0x1

    .line 475
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_25

    .line 476
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_25
    move v2, v3

    goto :goto_c

    .line 479
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 362
    invoke-static {p0}, Lcom/codemao/nemo/util/StringUtil;->numberFormat(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_18

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 366
    :cond_18
    sget-object p0, Lcom/codemao/nemo/util/StringUtil;->ONE_HUNDRED_MILLION:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    if-gtz v2, :cond_6c

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_6c

    :cond_27
    const-wide/32 v2, 0x186a0

    .line 369
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    if-gtz p0, :cond_4f

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_4f

    .line 372
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 370
    :cond_4f
    :goto_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/codemao/nemo/util/StringUtil;->TEN_THOUSAND:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "w"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6c
    :goto_6c
    const-string p0, "9999w"

    return-object p0
.end method

.method public static getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 376
    invoke-static {p0}, Lcom/codemao/nemo/util/StringUtil;->numberFormat(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_18

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 380
    :cond_18
    sget-object p0, Lcom/codemao/nemo/util/StringUtil;->ONE_HUNDRED_MILLION:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6c

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    if-nez p0, :cond_28

    goto :goto_6c

    :cond_28
    const-wide/16 v4, 0x2710

    .line 383
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    if-eq p0, v3, :cond_4f

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_4f

    .line 386
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :cond_4f
    :goto_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/codemao/nemo/util/StringUtil;->TEN_THOUSAND:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "w"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6c
    :goto_6c
    const-string p0, "9999w"

    return-object p0
.end method

.method public static getHiglightString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;
    .registers 11

    .line 718
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_25

    :cond_7
    const-string p5, ""

    .line 721
    invoke-virtual {p2, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 722
    array-length p5, p2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p5, :cond_24

    aget-object v1, p2, v0

    .line 723
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object p2, v1

    goto :goto_25

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_24
    const/4 p2, 0x0

    .line 729
    :goto_25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_40

    .line 730
    new-instance p0, Landroid/text/SpannableString;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 732
    :cond_40
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p5

    .line 733
    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, p4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_99

    .line 734
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_68

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 738
    :cond_68
    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p5

    cmpl-float p5, p5, v1

    if-lez p5, :cond_99

    const/4 p5, 0x1

    .line 739
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 p5, 0x40000000  # 2.0f

    .line 740
    invoke-static {p4, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    const/16 p5, 0xbb8

    const/high16 v0, -0x80000000

    .line 741
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 742
    invoke-virtual {p0, p4, p5}, Landroid/widget/TextView;->measure(II)V

    .line 743
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p4

    sget-object p5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p4, v1, p5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const p4, 0x7fffffff

    .line 744
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 747
    :cond_99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/codemao/nemo/util/StringUtil;->onHighLightEachSingleWord(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method public static getLength(Ljava/lang/String;)I
    .registers 4

    .line 873
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 875
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 876
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 877
    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->isDbcCase(C)Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_1c
    add-int/lit8 v0, v0, 0x2

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    return v0
.end method

.method public static getReportStr(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_33

    .line 970
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 976
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 977
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUploadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 943
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "0"

    .line 946
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "and"

    .line 947
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 948
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->generateShortUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_42
    const-string p1, "UTF-8"

    .line 960
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p1

    .line 963
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_53
    const-string p1, "\n"

    const-string v0, ""

    .line 965
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkDes(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, " +"

    .line 555
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    .line 557
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n+"

    .line 558
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 559
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "\n"

    .line 560
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkNameLength(Ljava/lang/String;)D
    .registers 3

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method

.method public static isDbcCase(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_a

    return v0

    :cond_a
    const v1, 0xff61

    if-lt p0, v1, :cond_15

    const v1, 0xff9f

    if-gt p0, v1, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[0-9]*"

    .line 564
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 565
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 566
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static isPhoneNum(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1a

    const-string v0, ""

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1a

    :cond_b
    const-string v0, "^1[3456789]\\d{9}$"

    .line 178
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static isWorkName(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^[\\u4e00-\\u9fa5A-Za-z0-9 &—\'！!()（）_-]+$"

    .line 430
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static numberFormat(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3

    if-eqz p0, :cond_4b

    const-string v0, ""

    .line 393
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 394
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_19

    .line 395
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 397
    :cond_19
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_28

    .line 398
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 400
    :cond_28
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_2f

    .line 401
    check-cast p0, Ljava/lang/Long;

    return-object p0

    .line 403
    :cond_2f
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 405
    :try_start_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception p0

    .line 408
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onHighLightEachSingleWord(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;
    .registers 12

    const-string v0, ""

    .line 602
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 604
    :try_start_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v1

    .line 607
    :cond_e
    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->removeRepeat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 608
    array-length v2, p1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_4b

    aget-object v4, p1, v3

    .line 609
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_44

    .line 612
    :cond_23
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 613
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 614
    :goto_2b
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 615
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_43} :catch_47

    goto :goto_2b

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :catch_47
    move-exception p0

    .line 619
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    return-object v1
.end method

.method public static removeRepeat(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2a

    .line 628
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 629
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v4, v5, :cond_1e

    .line 630
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 632
    :cond_1e
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v2, :cond_27

    .line 634
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 638
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    .line 652
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_25

    :cond_7
    const-string v0, ""

    .line 655
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 656
    array-length v0, p2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    aget-object v2, p2, v1

    .line 657
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object p2, v2

    goto :goto_25

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    const/4 p2, 0x0

    .line 663
    :goto_25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 664
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2f
    mul-int p4, p4, p5

    .line 668
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p5

    .line 669
    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p5

    int-to-float p4, p4

    cmpl-float p4, p5, p4

    if-lez p4, :cond_59

    .line 670
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_59

    .line 672
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "..."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 675
    :cond_59
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/codemao/nemo/util/StringUtil;->onHighLightEachSingleWord(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setHighLightNew(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    .line 680
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_25

    :cond_7
    const-string p4, ""

    .line 683
    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 684
    array-length p4, p2

    const/4 p5, 0x0

    :goto_f
    if-ge p5, p4, :cond_24

    aget-object v0, p2, p5

    .line 685
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object p2, v0

    goto :goto_25

    :cond_21
    add-int/lit8 p5, p5, 0x1

    goto :goto_f

    :cond_24
    const/4 p2, 0x0

    .line 691
    :goto_25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2f

    .line 692
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 696
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 703
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/codemao/nemo/util/StringUtil;->onHighLightEachSingleWord(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

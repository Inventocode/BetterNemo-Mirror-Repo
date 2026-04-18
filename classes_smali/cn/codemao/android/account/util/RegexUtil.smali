.class public Lcn/codemao/android/account/util/RegexUtil;
.super Ljava/lang/Object;
.source "RegexUtil.java"


# static fields
.field public static final BIRTHDAY:I = 0x7

.field public static final CAPTCHA:I = 0x2

.field private static final CAPTCHA_REGEX:Ljava/lang/String; = "^\\d{6}$"

.field public static final DESCRIPTION:I = 0x9

.field public static final EMAIL:I = 0x8

.field private static final EMAIL_REGEX:Ljava/lang/String; = "^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$"

.field public static final FULLNAME:I = 0x5

.field private static final FULLNAME_REGEX:Ljava/lang/String; = "^([\\u4e00-\\u9fa5]{2,20}|[a-zA-Z](\\s?[a-zA-Z]){3,29})?$"

.field public static final NICKNAME:I = 0x4

.field private static final NICKNAME_REGEX:Ljava/lang/String; = "^[^\\s☀☁☂ϟ☉☼☾☽♁♨❄❅❆☃☁✉℡℻☎☏✂✄✆✎✏✐✑✒✇℗©®\ud83c\udd4f\ud83c\udd8f⚐⚑⚆⚇⚈⚉⚞⚟⚠⚬⚭⚮⚯☊㋀㋁㋂㋃㋄㋅㋆㋇㋈㋉㋊㋋㏠㏡㏢㏣㏤㏥㏦㏧㏨㏩㏪㏫㏬㏭㏮㏯㏰㏱㏲㏳㏴㏵㏶㏷㏸㏹㏺㏻㏼㏽㏾㍘㍙㍚㍛㍜㍝㍞㍟㍠㍡㍢㍣㍤㍥㍦㍧㍨㍩㍪㍫㍬㍭㍮㍯㍰㏂㏘♳♴♵♶♷♸♹♺♲♻♼♽⚀⚁⚂⚃⚄⚅]{1,20}$"

.field public static final PASSWORD:I = 0x0

.field private static final PASSWORD_REGEX:Ljava/lang/String; = "^[a-zA-Z0-9\\_\\-@#?!~$^&\\*\\(\\)/%<>,\\.;:\"+=|\\\\{}\\[\\]]{6,20}$"

.field public static final PHONE_NUMBER:I = 0x1

.field private static final PHONE_REGEX:Ljava/lang/String; = "^1[3456789]\\d{9}$"

.field public static final QQ:I = 0xa

.field private static final QQ_REGEX:Ljava/lang/String; = "^\\d{5,20}$"

.field public static final SEX:I = 0x6

.field private static final SEX_REGEX:Ljava/lang/String; = "[0,1]"

.field public static final USERNAME:I = 0x3

.field private static final USERNAME_REGEX:Ljava/lang/String; = "^[a-zA-Z]{1}\\w{5,29}$"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMatch(ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_6e

    goto/16 :goto_6d

    :pswitch_7  #0xa
    const-string p0, "^\\d{5,20}$"

    .line 67
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    .line 64
    :pswitch_e  #0x9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x32

    if-gt p0, p1, :cond_3a

    goto :goto_3b

    :pswitch_1d  #0x8
    const-string p0, "^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$"

    .line 60
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    .line 56
    :pswitch_24  #0x7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_3a

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v4, p0, v2

    if-gez v4, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    move v1, v0

    goto :goto_6d

    :pswitch_3d  #0x6
    const-string p0, "[0,1]"

    .line 53
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    :pswitch_44  #0x5
    const-string p0, "^([\\u4e00-\\u9fa5]{2,20}|[a-zA-Z](\\s?[a-zA-Z]){3,29})?$"

    .line 50
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    :pswitch_4b  #0x4
    const-string p0, "^[^\\s☀☁☂ϟ☉☼☾☽♁♨❄❅❆☃☁✉℡℻☎☏✂✄✆✎✏✐✑✒✇℗©®\ud83c\udd4f\ud83c\udd8f⚐⚑⚆⚇⚈⚉⚞⚟⚠⚬⚭⚮⚯☊㋀㋁㋂㋃㋄㋅㋆㋇㋈㋉㋊㋋㏠㏡㏢㏣㏤㏥㏦㏧㏨㏩㏪㏫㏬㏭㏮㏯㏰㏱㏲㏳㏴㏵㏶㏷㏸㏹㏺㏻㏼㏽㏾㍘㍙㍚㍛㍜㍝㍞㍟㍠㍡㍢㍣㍤㍥㍦㍧㍨㍩㍪㍫㍬㍭㍮㍯㍰㏂㏘♳♴♵♶♷♸♹♺♲♻♼♽⚀⚁⚂⚃⚄⚅]{1,20}$"

    .line 47
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    :pswitch_52  #0x3
    const-string p0, "^[a-zA-Z]{1}\\w{5,29}$"

    .line 44
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    :pswitch_59  #0x2
    const-string p0, "^\\d{6}$"

    .line 41
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    :pswitch_60  #0x1
    const-string p0, "^1[3456789]\\d{9}$"

    .line 38
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_6d

    :pswitch_67  #0x0
    const-string p0, "^[a-zA-Z0-9\\_\\-@#?!~$^&\\*\\(\\)/%<>,\\.;:\"+=|\\\\{}\\[\\]]{6,20}$"

    .line 35
    invoke-static {p0, p1}, Lcn/codemao/android/account/util/RegexUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_60  #00000001
        :pswitch_59  #00000002
        :pswitch_52  #00000003
        :pswitch_4b  #00000004
        :pswitch_44  #00000005
        :pswitch_3d  #00000006
        :pswitch_24  #00000007
        :pswitch_1d  #00000008
        :pswitch_e  #00000009
        :pswitch_7  #0000000a
    .end packed-switch
.end method

.method private static isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

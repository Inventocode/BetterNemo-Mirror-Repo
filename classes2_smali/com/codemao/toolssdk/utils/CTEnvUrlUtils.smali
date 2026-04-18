.class public final Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;
.super Ljava/lang/Object;
.source "CTEnvUrlUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/CTEnvUrlUtils$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p1, ".codemao.cn"

    return-object p1
.end method

.method static synthetic getDomain$default(Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 189
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getScheme$default(Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 18
    :cond_5
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getScheme(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final enableCookieToken(Ljava/lang/String;)Z
    .registers 3

    .line 165
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCpp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCodeLab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPyt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPythonOJ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public final getCommonPrefix(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;
    .registers 3

    const-string v0, "env"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_34

    .line 34
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_16  #0xa
    const-string p1, ""

    goto :goto_33

    :pswitch_19  #0x9
    const-string p1, "staging-"

    goto :goto_33

    :pswitch_1c  #0x8
    const-string p1, "test6-"

    goto :goto_33

    :pswitch_1f  #0x7
    const-string p1, "test5-"

    goto :goto_33

    :pswitch_22  #0x6
    const-string p1, "test4-"

    goto :goto_33

    :pswitch_25  #0x5
    const-string p1, "test3-"

    goto :goto_33

    :pswitch_28  #0x4
    const-string p1, "test2-"

    goto :goto_33

    :pswitch_2b  #0x3
    const-string p1, "test1-"

    goto :goto_33

    :pswitch_2e  #0x2
    const-string p1, "test-"

    goto :goto_33

    :pswitch_31  #0x1
    const-string p1, "dev-"

    :goto_33
    return-object p1

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
        :pswitch_1f  #00000007
        :pswitch_1c  #00000008
        :pswitch_19  #00000009
        :pswitch_16  #0000000a
    .end packed-switch
.end method

.method public final getHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCpp(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "turtle-tool"

    if-eqz v1, :cond_e

    goto :goto_54

    .line 41
    :cond_e
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPyt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v2, "lunar-turtle"

    goto :goto_54

    .line 42
    :cond_17
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkTanyueKn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v2, "tanyue-kn"

    goto :goto_54

    .line 43
    :cond_20
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnPlayer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnJust(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_52

    .line 44
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v2, "tools-entry"

    goto :goto_54

    .line 45
    :cond_36
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCodeLab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v2, "codelab"

    goto :goto_54

    .line 46
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkAIKids(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v2, "kidsai"

    goto :goto_54

    .line 47
    :cond_48
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPythonOJ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_54

    :cond_4f
    const-string v2, ""

    goto :goto_54

    :cond_52
    :goto_52
    const-string v2, "kn"

    .line 39
    :goto_54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v1, p1, v1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getDomain$default(Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getKnQueryEnv(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;
    .registers 3

    const-string v0, "envMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_34

    .line 185
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_16  #0xa
    const-string p1, "production"

    goto :goto_33

    :pswitch_19  #0x9
    const-string p1, "staging"

    goto :goto_33

    :pswitch_1c  #0x8
    const-string p1, "test06"

    goto :goto_33

    :pswitch_1f  #0x7
    const-string p1, "test05"

    goto :goto_33

    :pswitch_22  #0x6
    const-string p1, "test04"

    goto :goto_33

    :pswitch_25  #0x5
    const-string p1, "test03"

    goto :goto_33

    :pswitch_28  #0x4
    const-string p1, "test02"

    goto :goto_33

    :pswitch_2b  #0x3
    const-string p1, "test01"

    goto :goto_33

    :pswitch_2e  #0x2
    const-string p1, "test"

    goto :goto_33

    :pswitch_31  #0x1
    const-string p1, "development"

    :goto_33
    return-object p1

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
        :pswitch_1f  #00000007
        :pswitch_1c  #00000008
        :pswitch_19  #00000009
        :pswitch_16  #0000000a
    .end packed-switch
.end method

.method public final getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 54
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCpp(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    const-string v1, "/lunar/cpp"

    goto :goto_4a

    .line 55
    :cond_b
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPyt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4a

    .line 56
    :cond_12
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkTanyueKn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnJust(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_48

    .line 57
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v1, "/player"

    goto :goto_4a

    .line 58
    :cond_28
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_4a

    .line 59
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCodeLab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v1, "/answer"

    goto :goto_4a

    .line 60
    :cond_38
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkAIKids(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_4a

    .line 61
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPythonOJ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string v1, "/lunar/py_oj"

    goto :goto_4a

    :cond_48
    :goto_48
    const-string v1, "/editor"

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method public final getScheme(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    const-string p1, "https://"

    goto :goto_7

    :cond_5
    const-string p1, "http://"

    :goto_7
    return-object p1
.end method

.method public final getWorkTypeUrl(Lcom/codemao/toolssdk/manager/CMTEnvMode;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "env"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v0, v1, v2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getScheme$default(Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getCommonPrefix(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isWorkAIKids(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "AI_KIDS"

    .line 145
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkCodeLab(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "CODE_LAB"

    .line 138
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkCpp(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "CPP"

    .line 124
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    goto :goto_10

    :cond_a
    const-string v0, "TANYUE_CPP"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_10
    return p1
.end method

.method public final isWorkCppOrPyth(Ljava/lang/String;)Z
    .registers 3

    .line 171
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCpp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPyt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public final isWorkKn(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_41

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    goto :goto_41

    :sswitch_a
    const-string v0, "KN_PLAYER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_41

    :sswitch_13
    const-string v0, "GUYU_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_41

    :sswitch_1c
    const-string v0, "ROKI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_41

    :sswitch_25
    const-string v0, "KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_41

    :sswitch_2e
    const-string v0, "EXAM_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_41

    :sswitch_37
    const-string v0, "TANYUE_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    :cond_3f
    const/4 p1, 0x1

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p1, 0x0

    :goto_42
    return p1

    nop

    :sswitch_data_44
    .sparse-switch
        -0x3e8b3886 -> :sswitch_37
        -0x240f2a7d -> :sswitch_2e
        0x963 -> :sswitch_25
        0x26785b -> :sswitch_1c
        0x41f49938 -> :sswitch_13
        0x44e9bd3d -> :sswitch_a
    .end sparse-switch
.end method

.method public final isWorkKnAssetsResource(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "TANYUE_KN"

    .line 110
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    const-string v0, "KN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public final isWorkKnEntry(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_33

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x240f2a7d

    if-eq v0, v1, :cond_28

    const v1, 0x26785b

    if-eq v0, v1, :cond_1f

    const v1, 0x41f49938

    if-eq v0, v1, :cond_16

    goto :goto_33

    :cond_16
    const-string v0, "GUYU_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_33

    :cond_1f
    const-string v0, "ROKI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_31

    :cond_28
    const-string v0, "EXAM_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_33

    :cond_31
    :goto_31
    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p1, 0x0

    :goto_34
    return p1
.end method

.method public final isWorkKnJust(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "KN"

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkKnLocalImage(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_31

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3e8b3886

    if-eq v0, v1, :cond_27

    const v1, -0x240f2a7d

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x963

    if-eq v0, v1, :cond_15

    goto :goto_31

    :cond_15
    const-string v0, "KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_31

    :cond_1e
    const-string v0, "EXAM_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_31

    :cond_27
    const-string v0, "TANYUE_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    :cond_2f
    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p1, 0x0

    :goto_32
    return p1
.end method

.method public final isWorkKnPlayer(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "KN_PLAYER"

    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkPyt(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "PYTHON"

    .line 131
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkPythonOJ(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "PYTHON_OJ"

    .line 152
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkRoki(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "ROKI"

    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkTanyueKn(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "TANYUE_KN"

    .line 96
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWorkWood(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_38

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3a

    goto :goto_38

    :sswitch_a
    const-string v0, "TANYUE_CPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_38

    :sswitch_13
    const-string v0, "CPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_38

    :sswitch_1c
    const-string v0, "CPP_PLAYER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_38

    :sswitch_25
    const-string v0, "PYTHON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_38

    :sswitch_2e
    const-string v0, "WOOD_PYTHON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_36
    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p1, 0x0

    :goto_39
    return p1

    :sswitch_data_3a
    .sparse-switch
        -0x7bae0952 -> :sswitch_2e
        -0x726edb24 -> :sswitch_25
        -0x16c522e3 -> :sswitch_1c
        0x10583 -> :sswitch_13
        0x6d240a4c -> :sswitch_a
    .end sparse-switch
.end method

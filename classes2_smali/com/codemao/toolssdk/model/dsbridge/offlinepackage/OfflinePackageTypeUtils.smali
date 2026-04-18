.class public final Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;
.super Ljava/lang/Object;
.source "OfflinePackageData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;->INSTANCE:Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final env2EnvTag(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;
    .registers 3

    const-string v0, "env"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_24

    const/4 p1, 0x0

    goto :goto_23

    :pswitch_12  #0x8
    const-string p1, "test06"

    goto :goto_23

    :pswitch_15  #0x7
    const-string p1, "test05"

    goto :goto_23

    :pswitch_18  #0x6
    const-string p1, "test04"

    goto :goto_23

    :pswitch_1b  #0x5
    const-string p1, "test03"

    goto :goto_23

    :pswitch_1e  #0x4
    const-string p1, "test02"

    goto :goto_23

    :pswitch_21  #0x3
    const-string p1, "test01"

    :goto_23
    return-object p1

    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_21  #00000003
        :pswitch_1e  #00000004
        :pswitch_1b  #00000005
        :pswitch_18  #00000006
        :pswitch_15  #00000007
        :pswitch_12  #00000008
    .end packed-switch
.end method

.method public final env2Value(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;
    .registers 3

    const-string v0, "env"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageTypeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1c

    const-string p1, "production"

    goto :goto_1b

    :pswitch_13  #0x9
    const-string p1, "staging"

    goto :goto_1b

    :pswitch_16  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const-string p1, "test"

    goto :goto_1b

    :pswitch_19  #0x1
    const-string p1, "development"

    :goto_1b
    return-object p1

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_16  #00000002
        :pswitch_16  #00000003
        :pswitch_16  #00000004
        :pswitch_16  #00000005
        :pswitch_16  #00000006
        :pswitch_16  #00000007
        :pswitch_16  #00000008
        :pswitch_13  #00000009
    .end packed-switch
.end method

.method public final projectName2ToolType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "tanyue_kn"

    const/4 v1, 0x1

    .line 42
    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "TANYUE_KN"

    goto :goto_24

    :cond_c
    const-string v0, "python"

    .line 43
    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, "PYTHON"

    goto :goto_24

    :cond_17
    const-string v0, "kn"

    .line 44
    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "KN"

    goto :goto_24

    :cond_22
    const-string p1, "unknow"

    :goto_24
    return-object p1
.end method

.method public final toolType2Value(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x726edb24

    if-eq v0, v1, :cond_2f

    const v1, -0x3e8b3886

    if-eq v0, v1, :cond_24

    const/16 v1, 0x963

    if-eq v0, v1, :cond_18

    goto :goto_37

    :cond_18
    const-string v0, "KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_37

    :cond_21
    const-string p1, "kn"

    goto :goto_3c

    :cond_24
    const-string v0, "TANYUE_KN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "tanyue_kn"

    goto :goto_3c

    :cond_2f
    const-string v0, "PYTHON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    :cond_37
    :goto_37
    const-string p1, ""

    goto :goto_3c

    :cond_3a
    const-string p1, "python"

    :goto_3c
    return-object p1
.end method

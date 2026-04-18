.class public synthetic Lcom/bun/miitmdid/core/MainMdidSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/core/MainMdidSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    invoke-static {}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v0, 0x10

    new-array v0, v0, [I

    sput-object v0, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_b
    sget-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_f} :catch_f

    :catch_f
    const/16 v0, 0xd

    :try_start_11
    sget-object v3, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v3, v0
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_17} :catch_17

    :catch_17
    :try_start_17
    sget-object v2, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v3, 0x3

    aput v3, v2, v3
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_1e} :catch_1e

    :catch_1e
    const/4 v2, 0x4

    :try_start_1f
    sget-object v3, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v3, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_25} :catch_25

    :catch_25
    const/4 v1, 0x5

    :try_start_26
    sget-object v3, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v3, v2
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2c} :catch_2c

    :catch_2c
    const/4 v2, 0x6

    const/16 v3, 0xc

    :try_start_2f
    sget-object v4, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v4, v3
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x7

    :try_start_36
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v4, v5, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_3c} :catch_3c

    :catch_3c
    const/16 v1, 0x8

    :try_start_3e
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v5, v2
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_44} :catch_44

    :catch_44
    const/16 v2, 0x9

    :try_start_46
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v5, v4
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_4c} :catch_4c

    :catch_4c
    const/16 v4, 0xa

    :try_start_4e
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v4, v5, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_54} :catch_54

    :catch_54
    const/16 v1, 0xb

    :try_start_56
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v5, v2
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v2, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v3, v2, v4
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v2, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v0, v2, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_68} :catch_68

    :catch_68
    :try_start_68
    sget-object v0, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v1, 0xe

    aput v1, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_70} :catch_70

    :catch_70
    :try_start_70
    sget-object v0, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v1, 0xf

    aput v1, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method

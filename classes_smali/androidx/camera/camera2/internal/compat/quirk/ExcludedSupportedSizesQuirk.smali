.class public Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;
.super Ljava/lang/Object;
.source "ExcludedSupportedSizesQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHuaweiP20LiteExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0x22

    if-eq p2, p1, :cond_15

    const/16 p1, 0x23

    if-ne p2, p1, :cond_29

    .line 135
    :cond_15
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x2d0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x190

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object v0
.end method

.method private getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0x100

    if-ne p2, p1, :cond_29

    .line 113
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x1040

    const/16 v1, 0xc30

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xfa0

    const/16 v1, 0xbb8

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object v0
.end method

.method private getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0x100

    if-ne p2, p1, :cond_29

    .line 123
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x1040

    const/16 v1, 0xc30

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xfa0

    const/16 v1, 0xbb8

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object v0
.end method

.method private getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x23

    const/16 v3, 0x22

    const/16 v4, 0x438

    const/16 v5, 0x480

    const/16 v6, 0x600

    const/16 v7, 0x780

    const/16 v8, 0x800

    if-eqz v1, :cond_8a

    if-eq p2, v3, :cond_3b

    if-eq p2, v2, :cond_21

    goto/16 :goto_ce

    .line 202
    :cond_21
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ce

    .line 192
    :cond_3b
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xc18

    const/16 v1, 0x1020

    invoke-direct {p1, v1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x912

    invoke-direct {p1, v1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xc10

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x990

    const/16 v1, 0xcc0

    invoke-direct {p1, v1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x72c

    invoke-direct {p1, v1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    :cond_8a
    const-string v1, "1"

    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ce

    if-eq p2, v3, :cond_96

    if-ne p2, v2, :cond_ce

    .line 210
    :cond_96
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xa10

    const/16 v1, 0x78c

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xa00

    const/16 v1, 0x5a0

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ce
    :goto_ce
    return-object v0
.end method

.method private getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x23

    const/16 v3, 0x22

    const/16 v4, 0x438

    const/16 v5, 0x480

    const/16 v6, 0x600

    const/16 v7, 0x72c

    const/16 v8, 0x780

    const/16 v9, 0x990

    const/16 v10, 0x800

    const/16 v11, 0xcc0

    if-eqz v1, :cond_aa

    const/16 p1, 0x912

    const/16 v1, 0x1020

    const/16 v12, 0xc10

    if-eq p2, v3, :cond_67

    if-eq p2, v2, :cond_2d

    goto/16 :goto_ee

    .line 159
    :cond_2d
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, v1, p1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v11, v9}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v11, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v10, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v10, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ee

    .line 149
    :cond_67
    new-instance p2, Landroid/util/Size;

    const/16 v2, 0xc18

    invoke-direct {p2, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, v1, p1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v11, v9}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v11, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v10, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v10, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    :cond_aa
    const-string v1, "1"

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ee

    if-eq p2, v3, :cond_b6

    if-ne p2, v2, :cond_ee

    .line 171
    :cond_b6
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v11, v9}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v11, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v9, v9}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v8}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v10, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v10, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ee
    :goto_ee
    return-object v0
.end method

.method private static isHuaweiP20Lite()Z
    .registers 2

    .line 69
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "HWANE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static isOnePlus6()Z
    .registers 2

    .line 60
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OnePlus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "OnePlus6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static isOnePlus6T()Z
    .registers 2

    .line 64
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OnePlus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "OnePlus6T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static isSamsungJ7Api27Above()Z
    .registers 3

    .line 79
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SAMSUNG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J7XELTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method private static isSamsungJ7PrimeApi27Above()Z
    .registers 3

    .line 73
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SAMSUNG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON7XELTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method static load()Z
    .registers 1

    .line 55
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6T()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isHuaweiP20Lite()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7PrimeApi27Above()Z

    move-result v0

    if-nez v0, :cond_21

    .line 56
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7Api27Above()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method


# virtual methods
.method public getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 93
    :cond_b
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6T()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 94
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 96
    :cond_16
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isHuaweiP20Lite()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 97
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getHuaweiP20LiteExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 99
    :cond_21
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7PrimeApi27Above()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 100
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 102
    :cond_2c
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7Api27Above()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 103
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_37
    const-string p1, "ExcludedSupportedSizesQuirk"

    const-string p2, "Cannot retrieve list of supported sizes to exclude on this device."

    .line 105
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.class synthetic Lcn/codemao/android/share/QQshare$1;
.super Ljava/lang/Object;
.source "QQshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/share/QQshare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 48
    invoke-static {}, Lcn/codemao/android/share/bean/ShareMedia;->values()[Lcn/codemao/android/share/bean/ShareMedia;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/codemao/android/share/QQshare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

    :try_start_9
    sget-object v1, Lcn/codemao/android/share/bean/ShareMedia;->QQ:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcn/codemao/android/share/QQshare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

    sget-object v1, Lcn/codemao/android/share/bean/ShareMedia;->QQZONE:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

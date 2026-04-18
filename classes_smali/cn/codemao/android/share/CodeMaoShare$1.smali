.class synthetic Lcn/codemao/android/share/CodeMaoShare$1;
.super Ljava/lang/Object;
.source "CodeMaoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/share/CodeMaoShare;
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

    .line 37
    invoke-static {}, Lcn/codemao/android/share/bean/ShareMedia;->values()[Lcn/codemao/android/share/bean/ShareMedia;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/codemao/android/share/CodeMaoShare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

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
    sget-object v0, Lcn/codemao/android/share/CodeMaoShare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

    sget-object v1, Lcn/codemao/android/share/bean/ShareMedia;->QQZONE:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcn/codemao/android/share/CodeMaoShare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

    sget-object v1, Lcn/codemao/android/share/bean/ShareMedia;->WECHAT:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcn/codemao/android/share/CodeMaoShare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

    sget-object v1, Lcn/codemao/android/share/bean/ShareMedia;->WECHATCIRCLE:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

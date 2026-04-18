.class public Lcom/readboy/provider/mhc/info/DbConstants;
.super Ljava/lang/Object;
.source "DbConstants.java"


# static fields
.field public static final USER_INFO_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.readboy.personal.personalProvider/mhc_user_info_data"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.class public final Landroid/support/v4/media/MediaDescriptionCompat;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompat$Api23Impl;,
        Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;,
        Landroid/support/v4/media/MediaDescriptionCompat$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/MediaDescriptionCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescription:Ljava/lang/CharSequence;

.field private mDescriptionFwk:Landroid/media/MediaDescription;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field private final mMediaId:Ljava/lang/String;

.field private final mMediaUri:Landroid/net/Uri;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 432
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$1;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    .line 210
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 211
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 212
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    .line 214
    const-class v0, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaId",
            "title",
            "subtitle",
            "description",
            "icon",
            "iconUri",
            "extras",
            "mediaUri"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 200
    iput-object p3, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 201
    iput-object p4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    .line 202
    iput-object p5, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 203
    iput-object p6, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 204
    iput-object p7, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    .line 205
    iput-object p8, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    return-void
.end method

.method public static fromMediaDescription(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptionObj"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_83

    .line 386
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_83

    .line 387
    new-instance v2, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 388
    check-cast p0, Landroid/media/MediaDescription;

    .line 389
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getMediaId(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 390
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getTitle(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 391
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getSubtitle(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 392
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getDescription(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 393
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getIconBitmap(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 394
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getIconUri(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 395
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getExtras(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 397
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    :cond_44
    const-string v4, "android.support.v4.media.description.MEDIA_URI"

    if-eqz v3, :cond_4f

    .line 401
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    goto :goto_50

    :cond_4f
    move-object v5, v0

    :goto_50
    if-eqz v5, :cond_68

    const-string v6, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 404
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_62

    goto :goto_69

    .line 413
    :cond_62
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_68
    move-object v0, v3

    .line 417
    :goto_69
    invoke-virtual {v2, v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    if-eqz v5, :cond_72

    .line 419
    invoke-virtual {v2, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_7d

    :cond_72
    const/16 v0, 0x17

    if-lt v1, v0, :cond_7d

    .line 421
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api23Impl;->getMediaUri(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 423
    :cond_7d
    :goto_7d
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 424
    iput-object p0, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    :cond_83
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDescription()Ljava/lang/Object;
    .registers 7

    .line 338
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    if-nez v0, :cond_69

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_b

    goto :goto_69

    .line 341
    :cond_b
    invoke-static {}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->createBuilder()Landroid/media/MediaDescription$Builder;

    move-result-object v0

    .line 342
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setMediaId(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setTitle(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setSubtitle(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V

    .line 345
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setDescription(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V

    .line 346
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setIconBitmap(Landroid/media/MediaDescription$Builder;Landroid/graphics/Bitmap;)V

    .line 347
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setIconUri(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)V

    const/16 v2, 0x17

    if-ge v1, v2, :cond_57

    .line 352
    iget-object v3, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    if-eqz v3, :cond_57

    .line 354
    iget-object v3, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_45

    .line 355
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    const-string v5, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 356
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4c

    .line 358
    :cond_45
    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 360
    :goto_4c
    iget-object v4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    const-string v5, "android.support.v4.media.description.MEDIA_URI"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    invoke-static {v0, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setExtras(Landroid/media/MediaDescription$Builder;Landroid/os/Bundle;)V

    goto :goto_5c

    .line 363
    :cond_57
    iget-object v3, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->setExtras(Landroid/media/MediaDescription$Builder;Landroid/os/Bundle;)V

    :goto_5c
    if-lt v1, v2, :cond_63

    .line 366
    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Api23Impl;->setMediaUri(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)V

    .line 368
    :cond_63
    invoke-static {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->build(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    :cond_69
    :goto_69
    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2f

    .line 308
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 310
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 311
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 312
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 314
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_38

    .line 317
    :cond_2f
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaDescription()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_38
    return-void
.end method

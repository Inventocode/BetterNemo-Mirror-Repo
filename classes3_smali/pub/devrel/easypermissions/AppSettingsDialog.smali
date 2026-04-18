.class public Lpub/devrel/easypermissions/AppSettingsDialog;
.super Ljava/lang/Object;
.source "AppSettingsDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpub/devrel/easypermissions/AppSettingsDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityOrFragment:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mIntentFlags:I

.field private final mNegativeButtonText:Ljava/lang/String;

.field private final mPositiveButtonText:Ljava/lang/String;

.field private final mRationale:Ljava/lang/String;

.field private final mRequestCode:I

.field private final mThemeResId:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lpub/devrel/easypermissions/AppSettingsDialog$1;

    invoke-direct {v0}, Lpub/devrel/easypermissions/AppSettingsDialog$1;-><init>()V

    sput-object v0, Lpub/devrel/easypermissions/AppSettingsDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpub/devrel/easypermissions/AppSettingsDialog$1;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static fromIntent(Landroid/content/Intent;Landroid/app/Activity;)Lpub/devrel/easypermissions/AppSettingsDialog;
    .registers 3

    const-string v0, "extra_app_settings"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lpub/devrel/easypermissions/AppSettingsDialog;

    .line 85
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->setActivityOrFragment(Ljava/lang/Object;)V

    return-object p0
.end method

.method private setActivityOrFragment(Ljava/lang/Object;)V
    .registers 5

    .line 90
    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 93
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    goto :goto_17

    .line 94
    :cond_b
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_18

    .line 95
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    :goto_17
    return-void

    .line 97
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getIntentFlags()I
    .registers 2

    .line 153
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    return v0
.end method

.method showDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .registers 6

    .line 122
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    if-lez v0, :cond_c

    .line 123
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_13

    .line 125
    :cond_c
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_13
    const/4 v0, 0x0

    .line 128
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 132
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 143
    iget p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

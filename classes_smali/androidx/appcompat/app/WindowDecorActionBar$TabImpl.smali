.class public Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
.super Landroidx/appcompat/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .registers 2

    .line 1160
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar$Tab;-><init>()V

    const/4 p1, -0x1

    .line 1166
    iput p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/ActionBar$TabListener;
    .registers 2

    .line 1181
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1278
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1192
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1212
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1217
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1226
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .registers 2

    .line 1259
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 1221
    iput p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method

.class public final synthetic La/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ganeum/calc/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ganeum/calc/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, La/e;->a:I

    iput-object p1, p0, La/e;->b:Lcom/ganeum/calc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, La/e;->b:Lcom/ganeum/calc/MainActivity;

    iget p2, p0, La/e;->a:I

    packed-switch p2, :pswitch_data_0

    sget-object p2, Lcom/ganeum/calc/MainActivity;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string p2, "https://mini-2026.github.io/ganeum/#updates"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ganeum/calc/MainActivity;->f(Landroid/net/Uri;)V

    return-void

    .line 2
    :pswitch_0
    const-string p2, "window.AppInfo&&AppInfo.updStart&&AppInfo.updStart()"

    invoke-virtual {p1, p2}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
